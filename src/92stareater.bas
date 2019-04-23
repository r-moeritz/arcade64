   1 rem
   2 rem initialization
   3 rem
   5 dim ch(3),cl(3),cc(1),cb(1),cm(1):ch(0)=102:ch(1)=32:ch(2)=43:ch(3)=42
  10 cl(0)=0:cl(1)=9:cl(2)=8:cl(3)=1
  15 sc=peek(648):cm=55296+256*(sc and2):sc=sc*256:poke 53281,9:poke 53280,11
  20 print"{blk}{clr}":fg=81:cf=4:m=0:gosub 600
  25 for i=40 to 999:x=int(rnd(1)*4):m=m-(x=3)
  30 poke sc+i,ch(x):poke cm+i,cl(x):next
  35 ti$="000000":oh=10:ov=10:fl=oh+ov*40:oc=cl(1):w=ch(1)
  40 poke sc+fl,fg:poke cm+fl,cf
  45 cc(0)=12:cc(1)=14:cm=55296:for i=0 to 1:cm(i)=1024*cc(i):next
  50 for i=0 to 1:cm(i)=1024*cc(i):cb(i)=(peek(53272)and 240)or cc(i):next
  55 gosub 1100
  97 rem
  98 rem main loop
  99 rem
 100 print"{home}score "str$(p)" time"str$(n-val(ti$))" "
 110 a=peek(653)and3:b=peek(197)
 120 if val(ti$)>n or m=0 then 300
 130 k=-(k=0):poke 53272,cb(k)
 190 h=(a>1)-(a=1):v=(b=6)-(b=3):if h=0 and v=0 then 100
 197 rem
 198 rem movement loop
 199 rem
 200 nh=oh+h+40*((oh=39 and h=1)-(oh=0 and h=-1))
 210 nv=ov+v+24*((ov=24 and v=1)-(ov=1 and v=-1))
 220 poke sc+fl,w:poke cm+fl,oc:fl=nh+nv*40:e=w
 230 w=peek(sc+fl):oc=peek(cm+fl):if w<>32 then gosub 700
 280 poke cm+fl,cf:poke sc+fl,fg
 290 oh=nh:ov=nv:goto 100
 297 rem
 298 rem end routine
 299 rem
 300 print"{clr}":if m=0 then sh=n-val(ti$):p=p+1000*sh:goto 320
 310 print"time's up!":print"stars left: "m:goto 325
 320 print"you got all the stars!":print"time left:"n-val(ti$)
 325 print"score:"p
 330 print"{3 down}play again? (y or n)"
 340 b=peek(197):if b=39 then end
 345 if b=25 then run
 350 goto 340
 597 rem
 598 rem set level subroutine
 599 rem
 600 print"      star eater":print"{2 down}choose your level:"
 605 print"1 - easy":print"2 - hard":print"3 - superhuman"
 610 n=peek(197):if n=64 then 610
 620 n=400+120*(n=59)+250*(n=8):print"{clr}":return
 697 rem
 698 rem collision routine
 699 rem
 700 if w=ch(0) then 730
 710 if w=ch(2) then p=p-val(ti$):w=ch(0):oc=cl(0):return
 720 p=p+int(n-val(ti$)):w=ch(2):oc=cl(2):m=m-1:return
 730 nh=oh:nv=ov:fl=oh+ov*40:w=e:oc=peek(fl+cm):return
1097 rem
1098 rem custom gfx loader
1099 rem
1100 poke 56334,peek(56334)and 254:poke 1,peek(1)and 251
1110 for i=0 to 1:rm=53248-cm(i)
1120 for j=cm(i) to cm(i)+511:poke j,peek(j+rm):next:next
1130 for i=0 to 1:j=816:gosub 1150:j=344:gosub 1150:j=336:gosub 1150
1140 j=648:gosub 1150:next:poke 1,peek(1)or 4:poke 56334,peek(56334)or 1:return
1150 for k=cm(i)+j to cm(i)+j+7:read sh:poke k,sh:next:return
1300 data 0,0,28,30,30,126,127,255
1310 data 0,0,16,106,38,28,0,0
1320 data 0,8,28,54,28,8,0,0
1330 data 0,0,24,126,231,24,0,0
1340 data 0,0,28,30,30,126,127,255
1350 data 0,0,8,86,100,56,0,0
1360 data 0,20,54,8,54,20,0,0
1370 data 24,60,102,195,129,66,60,24
