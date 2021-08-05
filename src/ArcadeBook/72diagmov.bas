10 print"{clear}":poke 53281,0:v=53248:x=50:y=30
20 for x=0 to 62:read a:poke 12288+x,a:next
30 poke 2040,192
40 poke v+21,1
50 poke v+39,10
60 poke v+0,x
70 poke v=1,y
80 y=y+1:if y=220 then 90
85 goto 60
90 poke v+0,x:poke v+1,y
100 x=x+1:if x=255 then 110
105 goto 90
110 poke v+0,x:poke v+1,y
120 y=y-1:if y=50 then 130
125 goto 110
130 poke v+0,x:poke v+1,y
140 x=x-1:if x=50 then 150
145 goto 130
150 poke v+0,x:poke v+1,y
160 x=x+1:y=y+1:if x=255 then print"{clear}{down}{down}{down}{white}all done!":end
165 goto 150
200 data 0,0,0,0,0,0,0,0,0
210 data 0,0,0,0,126,0,0,255,0
220 data 1,255,128,3,255,192,3,255,192
230 data 3,213,192,3,255,192,3,255,192
240 data 1,255,128,0,255,0,0,66,0
250 data 0,66,0,0,231,0,0,0,0
260 data 0,0,0,0,0,0,0,0,0
