5 REM IF the peek in line 20 is not 254, then 13*0, else 13*-1
8 REM on line 36, the semicolon appends the previous printed string 
10 PRINT "{clear}"
20 POKE 53281, 0
30 FOR i=0 TO 40
36 PRINT "{reverse on}{yellow} ":next