# I2C7segmentLED

スレーブアドレスは0x70（0xE0）から0x7F（0xFE）までジャンパーで選べます。<br>
スタートコンディション、スレーブアドレスに続いて1桁目（右側）、2桁目（左側）の表示データを送ります。<br>
3バイト目以降は1桁目、2桁目と交互に上書きされます。<br>
最後にストップコンディションを送ります(送らなくても表示は更新されます)<br>
読み出しは無視されます。<br>
<br>
<br>
データの並び順はMSBから<br>
DP. a b c d e f g
です。
<br>
16進数(0-F)を表示する場合のデータ<br>
    const unsigned char seg[16]={<br>
    0x7E,0x30,0x6D,0x79,0x33,0x5B,0x5F,0x70,0x7F,0x7B,0x77,0x1F,0x0D,0x3D,0x4F,0x47<br>
    };<br>
<br>
.zipは回路図と基板データ<br>
