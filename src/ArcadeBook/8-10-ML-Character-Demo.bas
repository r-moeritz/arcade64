10 POKE 53281,0:PRINT"{clear}{white}"
15 FOR X=831 TO 926:READ A:POKE X,A:NEXT
20 L=1520:C=42:CM=54272:POKE L,C:POKE L+CM,7
25 POKE 251,33:POKE 252,42:POKE 253,34:POKE 254,37:REM Set keys up,rght,lft,down
30 SYS (831):R=PEEK(828)-PEEK(829)
40 IF R=0 THEN 30
50 L=L+R:POKE L-R,32:IF L>2023 THEN L=2023
55 IF L<1024 THEN L=1024
60 POKE L,C:POKE L+CM,7
70 GOTO 30
1000 REM DATA FOR MACHINE LANGUAGE ROUTINE
1020 DATA 165,197,197,251,208,13,169,0,141,60,3,169,40,141,61,3,96,234
1030 DATA 234,197,252,208,13,169,1,141,60
1040 DATA 3,169,0,141,61,3,96,234,234,197,253,208,13,169,0,141,60,3,169
1050 DATA 1,141,61,3,96,234,234,197,254
1060 DATA 208,13,169,40,141,60,3,169,0,141,61,3,96,234,234,197,80,208,8
1070 DATA 169,1,141,62,3,96,234,234,169
1080 DATA 0,141,60,3,141,61,3,141,62,3,96,234,234