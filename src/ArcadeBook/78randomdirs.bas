  10 print"{clr}":poke 53281,0:v=53248:x=20:y=120
  20 for x=0 to 62:read a:poke 12288+x,a:next
  30 poke 2040,192
  40 poke v+21,1
  50 poke v+39,10
  60 poke v+0,x
  70 poke v+1,y
  72 for t=0 to 200:next t
  75 r=int(rnd(9)*4)
  80 if r=0 then x=x+5:goto 60
  90 if r=1 then x=x-5:goto 60
 100 if r=2 then y=y+5:goto 60
 110 if r=3 then y=y-5:goto 60
 200 data 0,0,0,0,0,0,0,0,0
 210 data 0,0,0,0,126,0,0,255,0
 220 data 1,255,128,3,255,192,3,255,192
 230 data 3,213,192,3,255,192,3,255,192
 240 data 1,255,128,0,255,0,0,66,0
 250 data 0,66,0,0,231,0,0,0,0
 260 data 0,0,0,0,0,0,0,0,0
