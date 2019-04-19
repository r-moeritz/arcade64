  10 dim cc(1),ch(1),cb(1)
  17 rem
  18 rem set memory variables
  19 rem
  20 cc(0)=12:cc(1)=14:vb=32768:vm=vb/256:sb=128:sc=sb*256:cm=55296
  30 for i=0 to 1:ch(i)=1024*cc(i)+vb:cb(i)=cc(i)+16*(sb-vm):next
  37 rem
  38 rem set video, screen & char blocks
  39 rem
  40 poke 648,sb:poke 56578,peek(56578)or 3:poke56576,(peek(56576)and252)or 1
  50 print"{clr}just a moment, please..."
  57 rem
  58 rem setup charset, screen, string
  59 rem
  60 gosub 1100:gosub 400:gosub 500
  67 rem
  68 rem setup initial screen positions
  69 rem
  70 fg=31:oc=1:nc=2:q=3:qq=q+1:gosub 800
  80 nh=7:nv=7:c=nh+nv*40:w=32:ss=27:cs=2:ts=0
  90 goto 290
  97 rem
  98 rem main loop
  99 rem
 100 a=peek(653) and 3:b=peek(197)
 107 rem
 108 rem time to scroll?
 109 rem
 110 if val(ti$)>q then gosub 600
 117 rem
 118 rem animate the screen
 119 rem
 120 k=-(k=0):poke 53272,cb(k)
 187 rem
 188 rem if no movement, then repeat
 189 rem
 190 h=(a>1)-(a=1):v=(b=6)-(b=3):if h=0 and v=0 then 100
 197 rem
 198 rem movement loop
 199 rem
 200 nh=oh+h+39*((oh=38 and h=1)-(oh=0 and h=-1))
 210 nv=ov+v+(ov=24 and v=1)-(ov=1 and v=-1)
 217 rem
 218 rem restore value at old location
 219 rem
 220 poke cm+c,oc:poke sc+c,w:c=nh+nv*40
 227 rem
 228 rem collision?
 229 rem
 230 w=peek(sc+c):if w<>32 then gosub 700
 277 rem
 278 rem poke ship in new location
 279 rem
 280 poke cm+c,nc:poke sc+c,fg:if nc>9 then 900
 290 oh=nh:ov=nv:goto 100
 397 rem
 398 rem setup string of random stars
 399 rem
 400 t$="":for i=0 to 254:t=32
 410 if int(rnd(9)*7)<1 then t=92:if int(rnd(9)*5)<1 then t=93
 420 t$=t$+chr$(t):next
 430 m$=chr$(19):for i=0 to 24:m$=m$+chr$(17):next:return
 497 rem
 498 rem create random starfield
 499 rem
 500 poke 53281,0:poke 53280,0:print"{wht}{clr}"
 505 for i=cm to cm+999:poke i,1:next
 510 q=100*rnd(9)+20:q1=6*rnd(9)+2
 520 for i=0 to q:x=1000*rnd(9):n=28:gosub 540:next
 530 for i=0 to q1:x=1000*rnd(9):n=29:gosub 540:next:return
 540 poke sc+x,n:return
 597 rem
 598 rem scroll the screen
 599 rem
 600 poke sc+c,w:poke cm+c,oc:t=1+int(rnd(9)*167)
 610 print m$;mid$(t$,t,40*int(qq-q)-1);:p=p-int(7*q):gosub 800
 617 rem
 618 rem collision?
 619 rem
 620 oc=peek(cm+c):w=peek(sc+c):if w<>32 then gosub 700
 627 rem
 628 rem restore starship to place
 629 rem
 630 poke sc+c,fg:poke cm+c,nc
 637 rem
 638 rem display score
 639 rem
 640 print"{home}"tab(18)str$(p)" points   "
 647 rem
 648 rem time for a space station?
 649 rem
 650 ts=ts+1:if ts>10*(qq-q) then gosub 850
 657 rem
 658 rem too many ships lost?
 659 rem
 660 if nc>9 then 900
 690 return
 695 rem
 696 rem collission handling routine
 697 rem
 698 rem small star
 699 rem
 700 if w=28 then p=p-100:nc=nc+1:return
 707 rem
 708 rem space station
 709 rem
 710 if w=27 then nc=cs:w=30:return
 717 rem
 718 rem used space station
 719 rem
 720 if w=30 then return
 727 rem
 728 rem nova!
 729 rem
 730 p=p+(8*nh)*int(qq-q):w=28:return
 797 rem
 798 rem reset timer
 799 rem
 800 ti$="000000":q=99*(q/100):return
 847 rem
 848 rem generate space station
 849 rem
 850 ts=0:t2=1001-int(rnd(9)*40):poke sc+t2,ss:poke cm+t2,cs:return
 897 rem
 898 rem ending routine
 899 rem
 900 for i=0 to 20:for x=0 to 7:poke cm+c,x:next:next
 910 print"{clr}"p" points":print:print:print "the end":end
1097 rem
1098 rem initialize charset
1099 rem
1100 poke 56334,peek(56334)and 254:poke 1,peek(1)and 251:poke 657,0
1110 for i=0 to 1:rm=53248-ch(i)
1120 for j=ch(i) to ch(i)+511:poke j,peek(j+rm):next:next
1130 for i=0 to 1:for j=27 to 31:for k=0 to 7
1140 read n:poke ch(i)+8*j+k,n:next:next:next
1150 poke 1,peek(1)or 4:poke 56334,peek(56334)or 1
1160 poke 53272,cb(0):return
1297 rem
1298 rem character data
1299 rem
1300 data 24,12,14,12,48,112,48,24
1310 data 0,0,40,16,40,0,0,0
1320 data 0,60,126,126,126,126,60,0
1330 data 0,32,116,249,159,46,4,0
1340 data 211,137,153,255,153,24,24,36
1350 data 0,32,112,241,143,14,4,0
1360 data 0,0,16,40,16,0,0,0
1370 data 0,66,60,60,60,60,66,0
1380 data 0,32,112,241,143,14,4,0
1390 data 203,145,153,255,153,24,24,36
