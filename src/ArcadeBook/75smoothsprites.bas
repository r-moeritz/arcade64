  10 print"{clr}":poke 53281,0:v=53248:x=50:y=120
  20 for x=0 to 63:read a:poke 12288+x,a:next
  30 poke 2040,192
  40 poke v+21,1
  50 poke v+39,4
  60 poke v+0,x
  70 poke v+1,y
  80 x=x+2:if x>255 then poke v+16,peek(v+16) or 1:x=1
  90 if (peek(v+16) and 1)=1 and x=91 then 120
 100 goto 60
 120 pokev+21,0:x=0:pokev+0,x:pokev+16,peek(v+16)and 254:poke v+21,1:goto60
 200 data 0,0,0,0,0,0,7,255,224,15,255,240,25,36,15,2,31,255,248,15,255
 210 data 240,7,255,224,0,24,0,32,189,4,49,255,140,43,255,212,36,60,36,40,24
 220 data 20,48,36,12,32,90,4,0,189,0,1,126,128,3,0,192,0,0,0,0,0,0,36,40,24
