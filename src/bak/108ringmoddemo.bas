10 print"{clear}{white}{down}{down}{yellow}"spc(10)"ring modulation demo{white}"
20 print"{down}{down}{down} controls:    {reverse on}f1{reverse off}  mute"
30 printspc(14)"{down}{reverse on}f2{reverse off}  unmute"
40 printspc(14)"{down}{reverse on}f3{reverse off}  raise freq. voice 3"
50 printspc(14)"{down}{reverse on}f4{reverse off}  lower same"
60 printspc(14)"{down}{reverse on}f5{reverse off}  raise freq. voice 1"
70 printspc(14)"{down}{reverse on}f6{reverse off}  lower same"
80 printspc(14)"{down}{reverse on}f7{reverse off}  increase interval"
90 printspc(14)"{down}{reverse on}f8{reverse off}  decrease interval"
100 poke 53281,0:s=54272:p=6:p1=100:x1=100:x2=150
110 poke s+14,20:poke s+15,p1:poke s+18,17
120 poke s,1:poke s+4,16:poke s+5,15:poke s+6,240:poke s+24,143
130 poke s+4,21:poke s+18,17
140 for x=x1 to x step p:poke s+1,x:next
150 for x=x2 to x1 step -p:poke s+1,x:next
160 get a$:if a$="{f1}" then poke s+24,0
165 if a$="{f2}" then poke s+24,255
170 if a$="{f3}" then p1=p1+5:if p1>250 then p1=250
180 if a$="{f4}" then p1=p1-5:if p1<5 then p1=5
190 poke s+15,p1
200 if a$="{f7}" then p=p+1:if p>20 then p=20
210 if a$="{f8}" then p=p-1:if p<1 then p=1
220 if a$="{f5}" then x1=x1+5:x2=x2+5:if x2>250 then x1=200:x2=250
230 if a$="{f6}" then x1=x1-5:x2=x2-5:if x1<25 then x1=25:x2=75
240 goto 140
