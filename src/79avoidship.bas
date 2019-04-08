  10 for x=0 to 62:read a:poke 12288+x,a:next
  20 for x=0 to 62:read a:poke 12352+x,a:next
  30 for x=0 to 62:read a:poke 12416+x,a:next
  40 for x=0 to 62:read a:poke 12736+x,a:next
  50 print"{clr}":v=53248:poke 53281,0:p=192:x1=50:y1=50:a=168:b=148
  60 poke 2040,p:poke 2041,199
  70 poke v+21,255:poke v+28,255:poke v+39,1:for x=0 to 6:poke v+40+x,3:next
  80 poke v+37,2:poke v+38,15:poke v+16,0
  90 poke 2040,p:poke v,a:poke v+1,b:poke v+2,x1:poke v+3,y1
 100 p=p+1:if p=195 then p=192:rem animation sequence
 110 if peek(197)=6 then y1=y1-3:rem up
 120 if peek(653)=1 then x1=x1+3:rem right
 130 if peek(197)=3 then y1=y1+3:rem down
 140 if peek(653)=2 then x1=x1-3:rem left
 150 rem check for seam for saucer
 160 if x1>252 and peek(653)=1 then poke v+16,peek(v+16)or 2:poke v+2,0:x1=0
 170 if x1>91 and (peek(v+16) and 2)=2 then x1=91
 180 ifx1<3andpeek(v+16)and2=2andpeek(653)=2thenx1=255:pokev+16,peek(v+16)and253
 190 if x1<0 then x1=0
 200 if (abs(x1-a)+abs(y1-b))<30 then 90
 205 q=sgn(x1-a)+2:qq=sgn(y1-b)+2:f=2
 210 on q gosub 230,230,240:on qq gosub 250,250,260
 220 q=a:gosub 270:a=q:q=b:gosub 270:b=q:goto 90
 230 a=a-f:return
 240 a=a+f:return
 250 b=b-f:return
 260 b=b+f:return
 270 if q<50 then q=50
 275 if q>229 then q=229
 280 return
 500 rem center #1 data
 510 data 252,0,63,240,0,15,192,0,3,192,60,3,192,255,3,195,255,195,207,255,243
 520 data 255,255,255,54,89,108,54,89,108,63,255,252,57,101,156,57,101,156
 530 data 255,255,255
 540 data 207,255,243,195,255,195,192,255,3,192,60,3,192,0,3,240,0,15,252,0,63
 550 rem center #2 data
 560 data 252,0,63,240,0,15,192,0,3,192,60,3,192,255,3,195,255,195,207,255,243
 570 data 255,255,255,57,101,156,57,101,156,63,255,252,54,89,108,54,89,108
 580 data 255,255,255
 590 data 207,255,243,195,255,195,192,255,3,192,60,3,192,0,3,240,0,15,252,0,63
 600 rem center #3 data
 610 data 252,0,63,240,0,15,192,0,3,192,60,3,192,255,3,195,255,195,207,255,243
 620 data 255,255,255,53,150,92,53,150,92,63,255,252,53,150,92,53,150,92
 630 data 255,255,255
 640 data 207,255,243,195,255,195,192,255,3,192,60,3,192,0,3,240,0,15,252,0,63
 650 rem saucer data
 660 data 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60,0,0,255,0,2,170,128,6
 670 data 102,96,42,170,168,255,255,255,42,170,168
 680 data 10,170,160,2,170,128,0,195,0,0,0,0,0,0,0,0,0,0,0,0,0
 690 if x1<a then a=a-2:if a<0 then a=0
