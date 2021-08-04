10 s=54272
100 poke s+24,15:rem set volume high
110 poke s+1,80:rem high frequency
120 poke s+5,80:rem a/d
130 poke s+6,245:rem s/r
140 for sp=10000 to 25 step -400
150 q=sqr(sp)
160 gosub 500:rem do an on/off
180 get a$:if a$="" then next
190 q=25:gosub 500
200 get a$:if a$="" then 190
210 end
500 poke s+4,129:rem start noise
510 for i=0 to 10+q:next:rem delay
520 poke s+4,128:rem begin release
530 for i=1 to 50+q:next:return
