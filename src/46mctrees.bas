   10 dim s$(4), s(9), cl$(5)
   20 cc=14:ch=cc*1024:sc=1024
   30 print chr$(30)"{clr}":poke 53272,(peek(53272) and 240) or cc
   40 gosub 1100:gosub 1200
   50 cl$(0)="{lgrn}":cl$(1)="{lgrn}":cl$(2)="{lred}":cl$(3)="{lgrn}":cl$(4)="{gry3}":cl$(5)=chr$(144)
   60 poke 53282,9:poke 53283,0:poke 53281,11:poke 53280,0
  100 gosub 900
  110 get c$:if c$="" then 110
  120 print "{clr}":goto 100
  900 for i=0 to int(rnd(9)*12+5):h=int(rnd(9)*8):v=int(rnd(9)*5)
  910 cl=int(rnd(9)*5)
  920 print cl$(cl)s$(v)tab(s(h))a$:next
  930 v=int(rnd(9)*5):h=int(rnd(9)*8):print cl$(5)s$(v)tab(s(h))a$
  940 return
 1100 for i=0 to 11:t=i*8:for j=ch+t to ch+t+7
 1110 read n:poke j,n:next:next
 1120 for j=ch+256 to ch+263:poke j,0:next j
 1130 return
 1200 a$="@ab{down}{left}{left}{left}cde{down}{left}{left}{left}fgh{down}{left}{left}{left}ijk"
 1210 s$(0)="{home}":for i=1 to 4:s$(i)=s$(i-1)+"{down}{down}{down}{down}{down}":next
 1220 for i=0 to 9:s(i)=i*4:next
 1230 return
 1300 data 12,60,60,240,255,61,61,1
 1310 data 60,252,252,240,243,255,51,67
 1320 data 0,0,0,0,0,192,240,64
 1330 data 0,3,3,0,0,3,3,3
 1340 data 125,127,252,236,236,233,253,189
 1350 data 64,240,48,0,204,255,255,12
 1360 data 3,0,3,3,63,53,1,240
 1370 data 189,125,248,200,184,52,84,16
 1380 data 95,3,3,0,0,60,204,255
 1390 data 60,60,233,224,192,0,1,40
 1400 data 20,23,89,150,42,169,170,136
 1410 data 252,252,111,140,0,0,84,138
