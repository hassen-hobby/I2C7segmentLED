;I2C Slave 2Digits 7SEG LED(PCB Ver)

	PROCESSOR	16F1827
	INCLUDE	"P16F1827.inc"
	RADIX	DEC
;コンフィギュレーションワード設定
;WDT無効、PLL有効、MCLR内部接続、他無効
	__CONFIG _CONFIG1, _FOSC_INTOSC & _WDTE_OFF & _PWRTE_OFF & _MCLRE_OFF & _CP_OFF & _CPD_OFF & _BOREN_OFF & _CLKOUTEN_OFF & _IESO_OFF & _FCMEN_OFF
	__CONFIG _CONFIG2, _WRT_OFF & _PLLEN_OFF & _STVREN_OFF & _BORV_19 & _LVP_OFF

;BANKは合ってますか警告を非表示
	ERRORLEVEL	-302

;ピン配置
;for I2C
;RB1:SDA
;RB4:SCL

;スレーブアドレスセレクト
;RB0:A0	
;RA5:A1
;RB6:A2
;RB5:A3

;to 7SEG
;カソードー
;RB7:K1
;RA4:K2

;アノード＋
;RA3:a
;RA2:b
;RB2:c
;RA7:d
;RA6:e
;RA0:f
;RA1:g
;RB3:DP

;8x2のダイナミックドライブ
;タイマー割り込み125us毎に1ステップずつ
;リフレッシュレートは1kHz

	UDATA_SHR
DIG1	RES	1
DIG2	RES	1
TEMP	RES	1
MASK	RES	1
STEP	RES	1
REC_CNT	RES	1

	ORG	0
	CALL	PIC_INIT
MAIN
	GOTO	MAIN
	ORG	4
	GOTO	INTR

;基本初期化処理
PIC_INIT
;アナログ入力無効
	BANKSEL	ANSELA	;BANK3
	CLRF	ANSELA
	CLRF	ANSELB
;プルアップ設定
	BANKSEL	WPUA	;BANK4
	MOVLW	B'00100000'
	MOVWF	WPUA
	MOVLW	B'01100001'
	MOVWF	WPUB
	BANKSEL	LATA	;BANK2
	MOVLW	B'11101111'
	MOVWF	LATA
	MOVLW	B'01111111'
	MOVWF	LATB
	BANKSEL	TRISA	;BANK1
;入出力方向はLEDマトリックス出力時に切換、一旦全部入力に
;	CLRF	TRISA
;	MOVLW	B'00010010'	;EUSART,MSSPで使うピンは入力に設定(必須)
;	MOVWF	TRISB
;プルアップ有効、TMR0は内部クロックでカウント、命令サイクルの1/1
	MOVLW	0x08
	MOVWF	OPTION_REG

;OSC設定(内蔵OSC4MHzで使用)
;	BANKSEL	OSCCON	;BANK1
	MOVLW	0x6A
	MOVWF	OSCCON

;SSPモジュール初期設定
;SSP_INIT
;スレーブアドレス設定、ジャンパで4ビット選べる
	BANKSEL	PORTB
	COMF	PORTB,W
	ANDLW	B'01100001'
	MOVWF	TEMP
	BTFSS	PORTA,5
	BSF		TEMP,1
	BANKSEL	SSP1CON1
	MOVLW	0xE0
	BTFSC	TEMP,0
	IORLW	0x02
	BTFSC	TEMP,1
	IORLW	0x04
	BTFSC	TEMP,6
	IORLW	0x08
	BTFSC	TEMP,5
	IORLW	0x10
	MOVWF	SSP1ADD		;スレーブアドレス設定
	BSF	SSP1STAT,SMP	;Slew rate control disabled
	MOVLW	0x36		;I2Cスレーブ、7ビットアドレス
	MOVWF	SSP1CON1

	BANKSEL	PIE1
	BSF	PIE1,SSP1IE	;SSP割り込み許可
	BSF	INTCON,PEIE	;周辺機能割り込み許可

	CLRF	DIG1
	CLRF	DIG2
	CLRF	STEP

	BSF	INTCON,TMR0IE
	MOVLW	131		;256-125
	MOVWF	TMR0

	RETFIE


INTR
	BANKSEL	PIR1
	BTFSC	INTCON,TMR0IF
	GOTO	T0_INTR
	BTFSC	PIR1,SSP1IF
	GOTO	SSP_INTR
;SSP(I2Cスレーブ)
SSP_INTR
	BANKSEL	SSP1STAT
;読み出しコマンドは来ない前提
;書き込み(受信)モード
SSP_WRITE
	BTFSC	SSP1STAT,D_NOT_A	;Data or Addres ?
	GOTO	SSP_WRITE_DATA

SSP_WRITE_ADR;アドレスを受信(Write mode,続けて受信)
	MOVF	SSP1BUF,W		;受信したデータをロード
					;BFフラグは自動的にクリア
	BANKSEL	PIR1
	BCF	PIR1,SSP1IF		;割り込みフラグをクリア
	CLRF	REC_CNT
	RETFIE

SSP_WRITE_DATA
;ポインタ使用、受信データを受け取り順にDIG1-DIG2に格納
	CLRF	FSR0H
	MOVLW	DIG1
	MOVWF	FSR0L

	MOVF	REC_CNT,W
	ANDLW	0x01
	ADDWF	FSR0L,F
	MOVF	SSP1BUF,W		;受信したデータをロード

	MOVWF	INDF0			;BFフラグは自動的にクリア
	INCF	REC_CNT,F
	BANKSEL	PIR1
	BCF	PIR1,SSP1IF		;割り込みフラグをクリア
	RETFIE


;125us毎割り込み
T0_INTR
	BCF	INTCON,TMR0IF
	BANKSEL	TMR0
	MOVLW	131
	ADDWF	TMR0,F

	BANKSEL	TRISA
	MOVLW	0xFF
	MOVWF	TRISA
	MOVWF	TRISB

	INCF	STEP,F
	MOVF	STEP,W
	BRW
	GOTO	STEP0
	GOTO	STEP1
	GOTO	STEP2
	GOTO	STEP3
	GOTO	STEP4
	GOTO	STEP5
	GOTO	STEP6
	GOTO	STEP7
	GOTO	STEP8

STEP0
STEP1
;a
	MOVLW	0xF7
	MOVWF	TRISA
	MOVLW	0x40
	CALL	MATRIX_SUB
	RETFIE
;b
STEP2
	MOVLW	0xFB
	MOVWF	TRISA
	MOVLW	0x20
	CALL	MATRIX_SUB
	RETFIE
;c
STEP3
	MOVLW	0xFB
	MOVWF	TRISB
	MOVLW	0x10
	CALL	MATRIX_SUB
	RETFIE
;d
STEP4
	MOVLW	0x7F
	MOVWF	TRISA
	MOVLW	0x08
	CALL	MATRIX_SUB
	RETFIE
;e
STEP5
	MOVLW	0xBF
	MOVWF	TRISA
	MOVLW	0x04
	CALL	MATRIX_SUB
	RETFIE
;f
STEP6
	MOVLW	0xFE
	MOVWF	TRISA
	MOVLW	0x02
	CALL	MATRIX_SUB
	RETFIE
;g
STEP7
	MOVLW	0xFD
	MOVWF	TRISA
	MOVLW	0x01
	CALL	MATRIX_SUB
	RETFIE
;DP
STEP8
	MOVLW	0xF7
	MOVWF	TRISB
	MOVLW	0x80
	CALL	MATRIX_SUB

	CLRF	STEP
	RETFIE

MATRIX_SUB
	MOVWF	MASK
	MOVF	DIG2,W
	ANDWF	MASK,W
	BTFSS	STATUS,Z
	BCF	TRISB,7

	MOVF	DIG1,W
	ANDWF	MASK,W
	BTFSS	STATUS,Z
	BCF	TRISA,4

	RETURN
	END
