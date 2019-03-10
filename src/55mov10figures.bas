   5 rem standard setup
  10 dim v$(23),fg$(9),xv(9),nv(9),xh(9),nh(9),di(9)
  20 gosub 300
  30 bl$=" ":bc=1
  40 poke 53281,bc:poke 53280,bc:print chr$(147)
  45 rem set initial screen positions
  50 for i=0 to 9:print v$(nv(i))tab(nh(i))fg$(i):next
  60 rem vertical movement loop
 100 for i=0 to 4:nv(i)=nv(i)+di(i):if nv(i)>23 or nv(i)<0 then gosub 400
 110     print v$(xv(i))tab(nh(i))bl$v$(nv(i))tab(nh(i))fg$(i):xv(i)=nv(i):next
 115 rem horizontal movement loop
 120 for i=5 to 9:nh(i)=nh(i)+di(i):if nh(i)>38 or nh(i)<0 then gosub 450
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
 390 return
 395 rem reverse direction subroutines
 400 di(i)=-di(i):nv(i)=xv(i)+di(i):return
 450 di(i)=-di(i):nh(i)=xh(i)+di(i):return
