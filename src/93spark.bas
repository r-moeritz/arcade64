  10 dim a$(6),s$(10):poke 53281,0:poke 53280,1:print"{clr}{wht}":gosub 500
  15 z=4
  20 for i=0 to 9:print s$(i)a$(0):next i
  30 sm=peek(648)*256:cm=55296
  35 for i=cm to cm+999:poke i,1:next
  40 oc=peek(cm):nc=10:ol=37:nl=77
  50 dim mv(4,4):gosub 700:fr=0:ch=4:p=300:poke 657,128
  60 y=1:gosub 310:a=2:pl=6:gosub 200
 100 if val(ti$)>z then gosub 300
 110 poke cm+nl-mv(ch,fr),oc:poke cm+nl,nc
 120 a=peek(653)and3:b=peek(197):if a>0 then gosub 200
 130 if b<64 then gosub 250
 140 e=peek(sm+nl):gosub 400:ch=e
 145 if ch=4 and yy<>0 then gosub 450
 150 e=peek(sml+ol):gosub 400:fr=e:if ch=fr then fr=4+(fr=4)+d
 160 if ch<4 then ol=nl
 170 if ch<0 then 600
 180 nl=nl+mv(ch,fr):d=sgn(mv(ch,fr))=-1
 190 yy=0:goto 100
 200 ph=a:if a=3 then ph=0:goto 290
 250 print s$(pl)a$(0):yy=sgn(mv(ch,fr))
 260 pl=pl+(b=6)-(b=3):pl=pl+10*(pl>9)-10*(pl<0)
 290 print s$(pl)a$(ph):return
 300 y=int(rnd(9)*2):p=p-10:if z>1 then z=z-1
 310 print"{home}  time left   "str$(p)" "
 320 print"{home}{down}"a$(3+y)s$(10)a$(6-y)
 330 if p=0 then 600
 340 ti$="000000":return
 400 e=e-128-73:if e>2 then e=e-9:if e>3 then e=e-7
 410 return
 450 if yy=-1 then ol=ch-40*int(ch/40)+720:return
 460 ol=ch-40*int(ch/40)+40:return
 500 for i=0 to 6:a$(i)=chr$(18):next i
 520 for x=1 to 38:a$(0)=a$(0)+chr$(221):next
 530 for i=1 to 5 step 4:for x=1 to 19:a$(i)=a$(i)+chr$(106)+chr$(107):next:next
 540 for i=2 to 6 step 4:a$(i)=chr$(221):for x=1 to 18
 545 a$(i)=a$(i)+chr$(106)+chr$(107):next:a$(i)=a$(i)+chr$(221):next
 550 for i=0 to 2:a$(i)=a$(i)+chr$(13)+chr$(18):next
 560 for x=1 to 38:a$(0)=a$(0)+chr$(221):next
 570 for i=1 to 3 step 2:for x=1 to 19:a$(i)=a$(i)+chr$(117)+chr$(105):next:next
 580 for i=2 to 4 step 2:a$(i)=a$(i)+chr$(221):for x=1 to 18
 585 a$(i)=a$(i)+chr$(117)+chr$(105):next:a$(i)=a$(i)+chr$(221):next
 590 s$(0)=chr$(18)+"{home}{2 down}":for i=1 to 10:s$(i)=s$(i-1)+"{2 down}":next:return
 600 print s$(10)tab(17)"{down}the end":goto 600
 700 for i=0 to 4:for x=0 to 4:read mv(i,x):next:next:return
 710 data 0,-1,-1,40,-1,1,0,-40,1,1,-1,-40,0,-1,-1
 720 data 40,1,1,0,1,40,-40,-40,40,0
