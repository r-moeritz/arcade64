   5 dim v$(24):v$(0)="{home}":for i=1 to 24:v$(i)=v$(i-1)+"{down}":next
  10 poke 53281,1:print"{clr}{blk}":poke 657,128:fg$="Q":nv=12:nh=20:goto 45
  15 jy=peek(56321) and 15
  20 h=(jy=11)-(jy=7)
  25 v=(jy=14)-(jy=13)
  30 if h=0 and v=0 then 15
  35 nv=ov+v+24*((ov=23 and v=1)-(ov=0 and v=-1))
  40 nh=oh+h+39*((oh=38 and h=1)-(oh=0 and h=-1))
  45 print v$(ov);tab(oh);" ";v$(nv);tab(nh);fg$
  50 oh=nh:ov=nv:goto 15
