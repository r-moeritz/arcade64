  10 print"{clr}":v=53248
  20 poke 52,48:poke 56,48
  30 for x=0 to 62:read a:poke 12288+x,a:next
  40 poke 2040,192
  50 poke v+21,1
  60 poke v+39,1
  70 poke v+0,180
  80 poke v+1,120
  90 poke v+23,1:poke v+29,1
 100 poke v+28,1
 110 poke v+37,1:poke v+38,7
 120 for t=0 to 500:next
 130 poke v+39,2
 140 for t=0 to 500:next
 150 poke v+39,4
 160 goto 120
 200 data 0,0,0,0,0,0,0,0,0,0,255,0,3,170,192,14,170,176,14,170,176
 210 data 14,170,176,14,102,176,14,170,176,14,170,176,14,170,176,3,170,192,0,255
 220 data 0,0,65,0,0,65,0,1,85,64,0,0,0,0,0,0,0,0,0,0,0,0
