10 s=54272:rm=20
20 poke s+1,15:poke s+5,16:poke s+6,240
30 poke s+15,rm:poke s+24,31
40 poke s+4,21
50 rm=rm-1:if rm=10 then rm=20
60 goto 30
