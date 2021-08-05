10 s=54272
20 poke s,20:poke s+1,5:poke s+23,1
30 poke s+24,79:poke s+5,15:poke s+6,246
40 poke s+15,30:poke s+14,30
50 poke s+4,131
60 for f=250 to 2 step -1.5
70 poke s+22,f:poke s+1,f:next
80 poke s+4,130
90 get a$:if a$="" then 90
100 goto 50
