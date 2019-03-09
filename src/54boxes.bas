   10 dim v$(23),ev(3),eh(3),bv(3),bh(3),hn(3),vn(3),fg$(3),h(3),v(3)
   20 gosub 300:bl$=chr$(144)+"{$a0}":bc=5
   30 v$(0)="{home}":for i=1 to 23:v$(i)=v$(i-1)+"{down}":next
   40 poke 53281,bc:poke 53280,bc:print "{clr}"
   50 gosub 990:for i=0 to 3:print v$(xv(i))tab(xh(i))fg$(i):next
  100 for i=0 to 3:if val(ti$)>1 then gosub 990:ti$="000000"
  190 if h(i)=0 and v(i)=0 then gosub 980:goto 190
  200 nh(i)=xh(i)+h(i)+hn(i)*((xh(i)>eh(i) and h(i)=1)-(xh(i)<bh(i) and h(i)=-1))
  210 nv(i)=xv(i)+v(i)+vn(i)*((xv(i)>ev(i) and v(i)=1)-(xv(i)<bv(i) and v(i)=-1))
  220 print v$(xv(i))tab(xh(i))bl$v$(nv(i))tab(nh(i))fg$(i)
  240 xh(i)=nh(i):xv(i)=nv(i)
  290 next:goto 100
  300 fori=0 to1:ev(i)=11:ev(i+2)=22:bv(i)=1:bv(i+2)=13:vn(i)=12:vn(i+2)=11:next
  310 for i=0 to 2 step 2:eh(i)=18:eh(i+1)=37:bh(i)=1:bh(i+1)=21
  320 hn(i)=1:hn(i+1)=1:next
  330 fg$(0)=chr$(5)+"q":fg$(1)=chr$(144)+"q"
  332 fg$(2)=chr$(5)+chr$(18)+"q"+chr$(146)
  334 fg$(3)=chr$(144)+chr$(18)+"q"+chr$(146)
  340 for i=0 to 1:xv(i)=7:xv(i+2)=19:next
  350 for i=0 to 2 step 2:xh(i)=10:xh(i+1)=30:next
  390 return
  980 h(i)=sgn(int(rnd(9)*5)-3):v(i)=sgn(int(rnd(9)*5)-3):return
  990 forj=0 to3:h(j)=sgn(int(rnd(9)*5)-3):v(j)=sgn(int(rnd(9)*5)-3):next:return
