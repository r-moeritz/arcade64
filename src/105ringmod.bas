  10 s=54272
  20 poke s+18,128:poke s,75
  30 poke s+5,0:poke s+6,240
  40 poke s+14,12:poke s+15,5
  60 poke s+24,207:poke s+4,21
  70 for l=0 to 15:poke s+1,peek(s+27) and 224
  75 for t=0 to 100:next:next:poke s+4,0
  80 for t=0 to 500:next:goto 60
