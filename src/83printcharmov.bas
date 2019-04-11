   5 dim v$(24):v$(0)="{home}":for i=1 to 24:v$(i)=v$(i-1)+"{down}":next
  10 poke 53281,1:print"{clr}{blk}":poke 657,128
  15 fg$="Z":nv=12:nh=20:goto 40
  20 a=peek(197):b=peek(653) and 3
  25 h=(b>1)-(b=1):v=(a=6)-(a=3):if v=0 and h=0 then 20
  30 nv=ov+v+24*((ov=23 and v=1)-(ov=0 and v=-1))
  35 nh=oh+h+39*((oh=38 and h=1)-(oh=0 and h=-1))
  40 print v$(ov);tab(oh);" ";v$(nv);tab(nh);fg$
  45 oh=nh:ov=nv:goto 20
