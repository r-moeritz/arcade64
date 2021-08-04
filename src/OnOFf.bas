5 REM IF the peek in line 20 is not 254, then 13*0, else 13*-1
8 REM on line 36, the semicolon appends the previous printed string 
10 PRINT "{clear}"
20 POKE 53281,14+13*(PEEK(53281)=254):GOSUB 30:GOTO 20
30 FOR i=0 TO 19
36 PRINT CHR$(94)"{down}{right}";
40 next i:return