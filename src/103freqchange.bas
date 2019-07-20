  10 s=54272
  20 poke s,150:poke s+1,p
  30 poke s+5,0:poke s+6,240
  40 poke s+24,15
  50 poke s+4,17
  60 for p=10 to 250 step 2
  70 poke s+1,p:next
  80 for t=0 to 1000:next
  90 goto 60
