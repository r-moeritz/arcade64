10 dim cc(1),ch(1),cb(1)
17 rem
18 rem set values for memory variables
19 rem
20 cc(0)=12:cc(1)=14:vb=32768:vm=vb/256:sb=128:sc=sb*256:cm=55296
30 for i=0 to 1:ch(i)=1024*cc(i)+vb:cb(i)=cc(i)+16*(sb-vm):next
37 rem
38 rem set video, screen, & char blocks
39 rem
40 poke 648,sb:poke 56578,peek(56578)or 3:poke56576,(peek(56576)and252)or 1
50 print "{clear}just a moment, please..."
57 rem
58 rem initialize screen, char set
59 rem
60 gosub 1100:gosub 400:gosub 500
67 rem
68 rem initialize display variables
69 rem
70 fg=31:oc=1:nc=2:q=3:qq=q+1:gosub 800
80 c=500:w=30:ss=27:cs=2:ts=0:poke cm+c,nc:poke sc+c,fg
97 rem
98 rem main loop
99 rem
100 for nc=3 to 15:x=0
107 rem
108 rem time to scroll the screen?
109 rem
110 if val(ti$)>q then gosub 600
117 rem
118 rem switch char sets: animation
119 rem
120 k=-(k=0):poke 53272,cb(k)
127 rem
128 rem end of main loop
129 rem
130 for i=0 to 49:next
140 if x<10 then 110
150 next nc:end
397 rem
398 rem setup up the string of new stars
399 rem
400 t$="":for i=0 to 254:t=32
410 if int(rnd(9)*7)<1 then t=92:if int(rnd(9)*5)<1 then t=93
420 t$=t$+chr$(t):next
430 m$=chr$(19):for i=0 to 24:m$=m$+chr$(17):next:return
497 rem
498 rem generate the starfield
499 rem
500 poke 53281,0:poke 53280,0:print "{white}{clear}"
505 for i=cm to cm+999:poke i,1:next
510 q=100*rnd(9)+20:q1=6*rnd(9)+2
520 for i=0 to q:x=1000*rnd(9):n=28:gosub 540:next
530 for i=0 to q1:x=1000*rnd(9):n=29:gosub 540:next:return
540 poke sc+x,n:return
597 rem
598 rem scroll the screen
599 rem
600 poke sc+c,w:poke cm+c,oc:t=1+int(rnd(9)*167)
605 print m$;mid$(t$,t,40*int(qq-q)-1);:p=p-int(7*q):gosub 800
607 rem
608 rem save character before scroll
609 rem
610 w=peek(sc+c)
617 rem
618 rem put spaceship in same location
619 rem
620 poke sc+c,fg:poke cm+c,nc
627 rem
628 rem time for a space station?
629 rem
630 ts=ts+1:if ts>10*(qq-q)then gosub 850
640 x=x+1
690 return
797 rem
798 rem reset the timer
799 rem
800 ti$="000000":q=99*(q/100):return
847 rem
848 rem put on a space station
849 rem
850 ts=0:t2=1001-int(rnd(9)*40):poke sc+t2,ss:poke cm+t2,cs:return
1097 rem
1098 rem copy rom character set
1099 rem
1100 poke 56334,peek(56334)and 254:poke 1,peek(1)and 251:poke 657,0
1107 rem
1108 rem copy first 64 characters twice
1109 rem
1110 for i=0 to 1:rm=53248-ch(i)
1120 for j=ch(i) to ch(i)+511:poke j,peek(j+rm):next:next
1127 rem
1128 rem put custom characters in place
1129 rem
1130 for i=0 to 1:for j=27 to 31:for k=0 to 7
1140 read n:poke ch(i)+8*j+k,n:next:next:next
1150 poke 1,peek(1)or 4:poke 56334,peek(56334)or 1
1160 poke 53272,cb(0):return
1297 rem
1298 rem data for custom characters
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
