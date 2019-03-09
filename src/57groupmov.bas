  10 dim fg$(6),f$(6),v$(9)
  20 gosub 300
  30 bl$=" ":bc=1
  40 print chr$(147)
 100 for x=0 to 8:print chr$(147)
 110 for i=0 to 15:print v$(x)tab(i);:for j=0 to 6:print fg$(j);:next:next
 120 fori=14 to 0 step-1:print v$(x)tab(i);:forj=0 to 6:print fg$(j);:next:next
 130 next x
 140 goto 100
 300 f$(0)=chr$(209):f$(1)=chr$(211):f$(2)=chr$(193)
 301 f$(3)=chr$(218):f$(4)=chr$(216)
 302 f$(5)=chr$(18)+" "+chr$(146):f$(6)=chr$(92)
 310 fori=0 to 6:fg$(i)=chr$(17)
 320 forj=0 to 7:fg$(i)=fg$(i)+" "+f$(i)+" ":next
 330 fg$(i)=fg$(i)+"                ":next
 340 v$(0)=chr$(19):for i=1 to 9:v$(i)=v$(i-1)+chr$(17):next
 390 return
