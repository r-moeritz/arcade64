5 dim v$(24):v$(0)="{home}":for i=1 to 24:v$(i)=v$(i-1)+"{down}":next
10 poke 53281,1:print"{clear}{black}":poke 657,128:fg$="Q":nv=12:nh=20:goto 45
15 jy=peek(56321) and 15
20 H=((JY AND 4)=0)-((JY AND 8)=0)
25 V=((JY AND 1)=0)-((JY AND 2)=0)
30 if h=0 and v=0 then 15
35 nv=ov+v+24*((ov=23 and v=1)-(ov=0 and v=-1))
40 nh=oh+h+39*((oh=38 and h=1)-(oh=0 and h=-1))
45 print v$(ov);tab(oh);" ";v$(nv);tab(nh);fg$
48 FB=-((PEEK(56321) AND 16)=0):IF FB=1 THEN GOSUB 100
50 oh=nh:ov=nv:goto 15
100 PRINT "pew pew pew madafakas":FOR T=0 TO 100:NEXT T
110 PRINT "{clear}"1: RETURN
