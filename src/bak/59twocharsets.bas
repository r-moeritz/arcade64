5 t=160
10 dim cc(1),ch(1),cb(1)
15 cc(0)=12:cc(1)=14
20 for i=0 to 1:ch(i)=1024*cc(i):cb(i)=(peek(53272)and 240)or cc(i):next
25 gosub 1100
30 for i=0 to 1:for j=27 to 28:for k=0 to 7
40 read a:poke ch(i)+8*j+k,a:next:next:next
100 x$="{pound} [ {pound} [ {pound} [ {pound} [ {pound} [ ":r$="-----------watch the changes-----------"
105 print "{home}";:for i=0 to 11:print x$x$r$:next
110 for i=0 to 1:poke 53272,cb(i):for j=0 to t:next:next:goto 110
1100 poke 56334,peek(56334)and 254:poke 1,peek(1)and 251
1110 for i=0 to 1:rm=53248-ch(i)
1120 for j=ch(i) to ch(i)+511:poke j,peek(j+rm):next:next
1130 poke 1,peek(1) or 4:poke 56334,peek(56334)or 1
1140 return
1300 data 0,0,3,3,3,3,0,0
1310 data 0,12,18,34,36,24,0,0
1320 data 192,192,0,0,0,0,192,192
1330 data 0,0,48,72,68,36,24,0
