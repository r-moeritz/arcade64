   10 dim s$(4),s(7),cl$(5)
   20 cc=14:ch=cc*1024:sc=1024
   30 print "{brn}{clr}":poke 53272,(peek(53272) and 240) or cc
   40 gosub 1100:gosub 1200
   50 cl$(0)="{orng}":cl$(1)=chr$(144):cl$(2)="{gry2}":cl$(3)=chr$(158)
   60 cl$(4)="{lred}":cl$(5)=chr$(5)
  100 gosub 900
  110 get c$:if c$="" then 110
  120 print"{clr}":goto 100
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
 1220 for i=0 to 7:s(i)=i*5:next
 1230 return
 1300 data 0,0,0,0,0,3,0,0
 1310 data 6,26,3,2,214,106,66,194
 1320 data 0,128,0,0,0,48,208,17
 1330 data 1,0,0,0,3,7,6,15
 1340 data 66,74,115,246,250,226,226,242
 1350 data 18,85,155,23,31,31,22,30
 1360 data 11,15,22,55,112,112,128,64
 1370 data 250,222,226,71,122,66,66,66
 1380 data 30,22,255,31,23,31,16,16
 1390 data 32,16,200,126,59,15,3,1
 1400 data 66,66,66,66,242,95,245,255
 1410 data 16,31,27,126,86,254,120,248
 13301 ,0,0,0,3,7,6,15
