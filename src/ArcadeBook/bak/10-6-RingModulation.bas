10 s=54272
15 poke s+14,114:poke s+15,10
16 poke s+3,8:poke s+2,0:poke s+14,255:pokes+15,3:poke s+18,32
18 poke s+24,15
20 poke s+5,15:poke s+6,240
30 poke s+4,19
50 for t=1 to 80:poke s+1,t+0:next
55 for t=80 to 1 step -1:poke s+1,t+50:next
70 goto 30
