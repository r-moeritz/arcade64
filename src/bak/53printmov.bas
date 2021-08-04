10 dim v$(23)
20 ev=22:eh=37:bv=1:bh=1:hn=39:vn=24:fg$="{black}x":bl$="{black} ":bc=7
30 v$(0)="{home}":for i=1 to 23:v$(i)=v$(i-1)+"{down}":next
40 poke 53281,bc:poke 53280,bc:print "{clear}"
50 h=1:v=0:xh=19:xv=11:print v$(xv)tab(xh)fg$
100 if val(ti$)>1 then gosub 990:ti$="000000"
190 if h=0 and v=0 then gosub 990:goto 190
200 nh=xh+h+hn*((xh>eh and h=1)-(xh<bh and h=-1))
210 nv=xv+v+vn*((xv>ev and v=1)-(xv<bv and v=-1))
220 print v$(xv)tab(xh)bl$v$(nv)tab(nh)fg$
240 xh=nh:xv=nv
290 goto 100
990 h=sgn(int(rnd(9)*3)-1):v=sgn(int(rnd(9)*3)-1):return
