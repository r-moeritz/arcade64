  10 poke 53281,0:print"{clr}{wht}"
  15 for x=831 to 926:read a:poke x,a:next
  20 l=1520:c=42:cm=54272:poke l,c:poke l+cm,7
  25 poke 251,46:poke 252,53:poke 253,45:poke 254,55
  30 sys(831):r=peek(828)-peek(829)
  40 if r=0 then 30
  50 l=l+r:poke l-r,32:if l>2023 then l=2023
  55 if l<1024 then l=1024
  60 poke l,c:poke l+cm,7
  70 goto 30
1000 rem data for ml routine
1020 data 165,197,197,251,208,13,169,0,141,60,3,169,40,141,61,3,96,234
1030 data 234,197,252,208,13,169,1,141,60
1040 data 3,169,0,141,61,3,96,234,234,197,253,208,13,169,0,141,60,3,169
1050 data 1,141,61,3,96,234,234,197,254
1060 data 208,13,169,40,141,60,3,169,0,141,61,3,96,234,234,197,80,208,8
1070 data 169,1,141,62,3,96,234,234,169
1080 data 0,141,60,3,141,61,3,141,62,3,96,234,234
