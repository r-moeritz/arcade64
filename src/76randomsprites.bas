  10 print"{clr}":poke 53281,0:v=53248:x=20:y=120
  20 for x=0 to 62:read a:poke 12288+x,a:next
  30 poke 2040,192
  40 poke v+21,1
  50 poke v+39,10
  60 poke v+0,x
  70 poke v+1,y
  75 r=int(rnd(9)*4)+1
  80 x=x+r:if x>255 then poke v+16,peek(v+16)or 1:x=1
  90 if (peek(v+16) and 1)=1 and x>91 then goto 110
 100 goto 60
 110 poke v+0,x:poke v+1,y
 115 r=int(rnd(9)*4)+1
 120 x=x-r:if x<0 then poke v+16,peek(v+16)and 254:x=255
 125 if (peek(v+16)and 1)=0 and x<4 then goto 60
 130 goto 110
 200 data 0,0,0,0,0,0,0,0,0
 210 data 0,0,0,0,126,0,0,255,0
 220 data 1,255,128,3,255,192,3,255,192
 230 data 3,213,192,3,255,192,3,255,192
 240 data 1,255,128,0,255,0,0,66,0
 250 data 0,66,0,0,231,0,0,0,0
 260 data 0,0,0,0,0,0,0,0,0
