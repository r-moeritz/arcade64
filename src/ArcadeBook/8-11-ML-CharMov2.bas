5 REM BASIC LOADER FOR FAST(CKX) KEYBOARD CONTROLLED CHARACTER ROUTINE 
10 POKE 53281,0: PRINT"{clear}"
20 POKE 251,255:POKE 252,4:POKE 253,PEEK(251):POKE254,PEEK(252)+212
30 POKE 828, 33:POKE 829, 37:POKE 830, 34:POKE 831,42:POKE 832,42:POKE 833,7
35 FOR X=834 TO 1014:READ A:POKE X,A:NEXT 
40 SYS(834)
50 GOTO 40
1020 DATA 32,176,3,165,197,205,60,3,208,14,32,183,3,32,228,3,176,63,32
1030 DATA 160,3,76,147,3,205,61,3,208,14,32,160,3,32,237,3,144,44,32
1040 DATA 183,3,76,147,3,205,62,3,208,14,32,199,3,32,228,3,176,25,32,217
1050 DATA 3,76,147,3,205,63,3,208,14,32,217,3,32,237,3,144,6,32,199,3
1060 DATA 76,147,3,160,0,173,64,3,145,251,173,65,3,145,253,96,24,165
1070 DATA 251,105,40,133,251,133,253,144,4
1080 DATA 230,252,230,254,96,160,0,169,32,145,251,96,56,165,251,233,40
1090 DATA 133,251,133,253,176,4,198,252,198,254,96,165,251,208,9,198,251
1100 DATA 198,253,198,252,198,254,96,198,251,198,253,96,230,251,230,253,208
1110 DATA 4,230,252,230,254,96,165,251,201,1,165,252,201,4,96,165,251
1120 DATA 201,232,165,252,233,7,96,234