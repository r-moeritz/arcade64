   5 rem standard setup
  10 dim v$(23),fg$(11),xv(11),nv(11),xh(11),nh(11),di(9),dv(11),dh(11)
  20 gosub 300
  30 bl$=" ":bc=1
  40 poke 53281,bc:poke 53280,bc:print chr$(147)
  45 rem set initial screen positions
  50 for i=0 to 11:print v$(nv(i))tab(nh(i))fg$(i):next
  60 rem vertical movement loop
 100 for i=0 to 4:nv(i)=nv(i)+di(i):if nv(i)>23 or nv(i)<0 then gosub 400
 105 for j=10 to 11:nv(j)=nv(j)+dv(j):if nv(j)>23 or nv(j)<0 then gosub 420
 106 nh(j)=nh(j)+dh(j):if nh(j)>38 or nh(j)<0 then gosub 470
 107 print v$(xv(j))tab(xh(j))bl$v$(nv(j))tab(nh(j))fg$(j)
 108 xh(j)=nh(j):xv(j)=nv(j):next
 110 print v$(xv(i))tab(nh(i))bl$v$(nv(i))tab(nh(i))fg$(i):xv(i)=nv(i):next
 115 rem horizontal movement loop
 120 for i=5 to 9:nh(i)=nh(i)+di(i):if nh(i)>38 or nh(i)<0 then gosub 450
 125 for j=10 to 11:nh(j)=nh(j)+dh(j):if nh(j)>38 or nh(j)<0 then gosub 470
 126 nv(j)=nv(j)+dv(j):if nv(j)>23 or nv(j)<0 then gosub 420
 127 print v$(xv(j))tab(xh(j))bl$v$(nv(j))tab(nh(j))fg$(j)
 128 xh(j)=nh(j):xv(j)=nv(j):next
 130 print v$(nv(i))tab(xh(i))bl$v$(nv(i))tab(nh(i))fg$(i):xh(i)=nh(i):next
 140 goto 100
 150 rem array setup
 300 for i=0 to 4:nh(i)=3+i*8:nh(i+5)=nh(i):nv(i)=3+i*4:nv(i+5)=nv(i):next
 310 for i=0 to 9:xv(i)=nv(i):xh(i)=nh(i):next
 320 v$(0)=chr$(19):for i=1 to 23:v$(i)=v$(i-1)+chr$(17):next
 330 fg$(0)=chr$(28)+"Q":fg$(1)=chr$(156)+"Z":fg$(2)=chr$(144)+"A"
 340 fg$(3)=chr$(30)+"B":fg$(4)=chr$(31)+"X"
 350 for i=0 to 4:fg$(i+5)=fg$(i):next
 360 for i=0 to 9 step 2:di(i)=1:di(i+1)=-di(i):next
 370 for i=10 to 11:nh(i)=8:nv(i)=19:xv(i)=19:xh(i)=8:fg$(i)="2+":next
 380 dv(10)=1:dv(11)=-1:dh(10)=-1:dh(11)=1
 390 return
 395 rem reverse direction subroutines
 400 di(i)=-di(i):nv(i)=xv(i)+di(i):return
 420 dv(j)=-dv(j):nv(j)=xv(j)+dv(j):return
 450 di(i)=-di(i):nh(i)=xh(i)+di(i):return
 470 dh(j)=-dh(j):nh(j)=xh(j)+dh(j):return
