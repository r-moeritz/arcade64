10 gosub 300
20 poke v+0,x:poke v+1,y
30 if peek(653)=1 then x=x+3:if x>255 then poke v+16,1:x=0
35 if x>65 and peek(v+16)=1 then poke v+16,0:x=1
40 if peek(653)=2 then x=x-3:if x<1 and peek(v+16)=1 then x=255:poke v+16,0
45 if x<1 and peek(v+16)=0 then x=65:poke v+16,1
48 rem See keyboard codes
50 if peek(197)=33 then y=y+2:if y>229 then y=229:rem check for key I
60 if peek(197)=37 then y=y-2:if y<50 then y=50:rem check for key K 
70 goto 20
300 v=53248:print"{clear}":poke 53281,1:x=160:y=100
310 for i=0 to 63:read a:poke 12288+i,a:next
320 poke v+21,1:poke 2040,192:poke v+39,0:return
500 data 0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,0,16,0,0,16,0,0,16,0,0
510 data 56,0,0,124,0,0,170,0,1,85,0,1,255,0,1,255,0,0,170,0,1,41,0
520 data 2,40,128,0,0,0,0,0,0,0,0,0,0,0,0,0
