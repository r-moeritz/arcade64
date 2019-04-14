  10 gosub 300
  25 jy=(peek(56321) and 15)
  30 on jy gosub 35,35,35,35,40,50,60,35,80,90,70,30,100,110,35:goto25
  35 return
  40 gosub 60:gosub 100:return
  50 gosub 60:gosub 110:return
  60 x=x+3:if x>255 then x=255
  65 poke v+0,x:return
  70 x=x-3:if x<24 then x=24
  75 poke v+0,x:return
  80 gosub 100:gosub 70:return
  90 gosub 110:gosub 70:return
 100 y=y+3:if y>229 then y=229
 105 poke v+1,y:return
 110 y=y-3:if y<50 then y=50
 115 poke v+1,y:return
 300 v=53248:print"{clr}":poke 53281,1:x=160:y=100
 310 for i=0 to 63:read a:poke 12288+i,a:next
 320 poke v+21,1:poke 2040,192:poke v+39,0:poke v+0,x:poke v+1,y:return
 500 data 0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,0,16,0,0,16,0,0,16,0,0
 510 data 56,0,0,124,0,0,170,0,1,85,0,1,255,0,1,255,0,0,170,0,1,41,0
 520 data 2,40,128,0,0,0,0,0,0,0,0,0,0,0,0,0
