10 s=54272
20 poke s,150:poke s+1,p
30 poke s+5,0:poke s+6,240
40 poke s+24,15
50 poke s+4,17
60 for p=10 to 250 step 2
70 poke s+1,p:next
75 FOR P=250 TO 10 STEP -2
76 POKE S+1,P:NEXT
80 FOR T=0 TO 50:NEXT
90 goto 60
