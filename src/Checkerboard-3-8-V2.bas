5 ADDR=(PEEK(53272)AND 240)*64:CM=55296
10 ADDR=1024:POKE53281,6:POKE 53280,1:PRINT"{clear}":POKE53281,1 :N=160:P=81
20 FOR X=0 TO 38 STEP 2:FOR Y=0 TO 23 STEP 2:GOSUB150:NEXT:NEXT
25 GOSUB 300
30 FOR X=0 TO 959:IF PEEK(ADDR+X)<>N THEN POKE ADDR+X,P
40 NEXT:READ N,P:IF N=0 THEN RESTORE:N=160:rem 246
45 GOSUB 300
50 GOTO 20
150 POKE ADDR+X+40*Y,N :rem 239
160 POKE ADDR+X+1+(Y+1)*40,N:RETURN :rem 19
200 DATA 86,78,77,127,255,95,105,79,80,88,74,113,112,32,0,81
300 Q=INT(RND(9)*8):IF Q=l THEN 300
305 rem 300 FOR I=0 TO 959:N=INT(RND(9)*8):POKE CM+I,N:NEXT I:RETURN
310 IF Q=PEEK(CM) AND 7 THEN 300
320 FOR I=0 TO 959:POKE CM+I,Q:NEXT I:RETURN