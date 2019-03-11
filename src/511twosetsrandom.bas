   1 t=9
   5 poke 53280,9:poke 53281,9:print "{wht}"
  10 dim cc(1),ch(1),cb(1),s$(23),a$(t),x(t),y(t),xd(t),yd(t)
  15 cc(0)=12:cc(1)=14
  18 rem
  19 rem set up two character sets
  20 for i=0 to 1:ch(i)=1024*cc(i):cb(i)=(peek(53272)and 240)or cc(i):next
  30 for i=0 to 1:for j=27 to 29:for k=0 to 7
  40 read a:poke ch(i)+8*j+k,a:next:next:next
  50 for i=0 to 1:for j=256 to 263:poke ch(i)+j,0:next:next
  58 rem
  59 rem define cursor movements
  60 gosub 1100
  68 rem
  69 rem set starting positions
  70 for i=0 to t:gosub 940:a$(i)=chr$(91+r):next:x$=" "
  75 for i=0 to t:gosub 950:x(i)=r:gosub 960:y(i)=r:next
  80 for i=0 to t:gosub 980:xd(i)=r:gosub 980:yd(i)=r:next
  90 print "{clr}"
  98 rem
  99 rem main movement loop
 100 k=-(k=0):i=int((t+1)*rnd(9))
 108 rem
 109 rem check for edges
 110 if x(i)<1 or x(i)>37 then gosub 300
 120 if y(i)<1 or y(i)>22 then gosub 320
 123 rem
 124 rem erase old positions
 125 print s$(y(i))tab(x(i))x$
 128 rem
 129 rem set new position values
 130 x(i)=x(i)+xd(i):y(i)=y(i)+yd(i)
 138 rem
 139 rem print at new positions
 140 print s$(y(i))tab(x(i))a$(i)
 148 rem
 149 rem animate by switching sets
 150 poke 53272,cb(k)
 160 goto 100
 190 goto 100
 298 rem
 299 rem rebound from side
 300 xd(i)=-xd(i)
 303 rem
 304 rem set rebound direction
 305 if(y(i)>0)and(y(i)<38) then on yd(i)+2 gosub 990,980,970:yd(i)=r
 310 return
 318 rem
 319 rem rebound from top or bottom
 320 yd(i)=-yd(i)
 323 rem
 324 rem set rebound direction
 325 if(x(i)>0)and(x(i)<23) then on xd(i)+2 gosub 990,980,970:xd(i)=r
 330 return
 938 rem
 939 rem set random character values
 940 r=int(rnd(9)*3):return
 948 rem
 949 rem set random starting positions
 950 r=1+int(rnd(9)*36):return
 960 r=1+int(rnd(9)*21):return
 968 rem
 969 rem randomize rebound direction
 970 r=int(2*rnd(9)):return
 980 r=int(2*rnd(9)):if r=0 then r=-1
 985 return
 990 r=-int(2*rnd(9)):return
1098 rem
1099 rem set up cursor positions
1100 s$(0)="{home}":for i=1 to 23:s$(i)=s$(i-1)+"{down}":next:return
1998 rem
1999 rem data for character set 1
2000 data 0,66,60,60,60,60,66,0
2010 data 24,24,36,36,66,66,129,129
2020 data 0,12,18,34,68,72,48,0
2998 rem
2999 rem data for character set 2
3000 data 0,60,126,126,126,126,60,0
3010 data 24,24,24,24,36,36,36,36
3020 data 0,48,72,68,34,18,12,0
