10 PRINT"{clear}": POKE 53281,0:TR=99:SC=0
20 FOR X=1024 TO 1063:GOSUB 200:NEXT X
30 FOR X=1063 TO 2023 STEP 40:GOSUB 200:NEXT
40 FOR X=2023 TO 1983 STEP -1:GOSUB 200:NEXT X
50 FOR X=1984 TO 1024 STEP -40:GOSUB 200: NEXT X
60 FOR X=1184 TO 1224:GOSUB 200:NEXT X
70 PRINT "{home}{down}{white}";TAB(15) "space game"
80 PRINT "{down}{right}{right}{yellow}time remaining:"TR;"{right}{right}{right}{right}{right}{white}score:"SC;"{white}"
90 TR=TR-1:IF TR=0 THEN TR=99
100 SC=SC+5:IF SC>205 THEN SC=0
110 FOR T=0 TO 1000:NEXT
120 goto 70
200 POKE X,42:POKE X+54272,3
220 RETURN