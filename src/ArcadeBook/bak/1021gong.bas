5 s=54272
10 for i=0 to 22:poke s+i,0:next
100 poke s+24,143:rem set volume high
110 poke s+5,16:rem a/d
115 poke s+19,16:rem a/d
120 poke s+6,252:rem s/r
125 poke s+20,249:rem s/r
140 poke s+4,21:poke s+18,17
150 poke s+1,68:poke s+15,42:fori=1to200:next
155 poke s+4,20:poke s+18,16:fori=1to400:next
170 get a$:if a$="" then 140
