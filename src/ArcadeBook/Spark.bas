10 DIM A$(6),S$(8):POKE 53281,1:POKE 53280,1:PRINT"{clear}{black}":GOSUB 500
20 PRINT"{home}{down}":FORI=0 TO 8:PRINT A$(0):NEXT I
30 PRINT"{home}":GOSUB 150:PRINT A$(N+3):PRINT S$(8)+A$(6-N)
40 PRINT"{home}{down}"+S$(S)+A$(0):GOSUB 160:GOSUB170:PRINT "{home}{down}"+S$(S)+A$(N)
50 FOR I=0 TO 2000:NEXT:GOTO 30
150 N=INT(2*RND(9)):RETURN
160 N=INT(3*RND(9)):RETURN
170 S=INT(7*RND(9)+1):RETURN
500 FOR X=1 TO 38:A$(0)=A$(0)+CHR$(221):NEXT
510 FOR I=1 TO 5 STEP 4:FOR X=1 TO 19:A$(I)=A$(I)+ CHR$(106)+CHR$(107):NEXT:NEXT
520 FOR I=2 TO 6 STEP 4:A$(I)=CHR$(221):FOR X=1 TO 18
525 A$(I)=A$(I)+CHR$(106)+CHR$(107):NEXT:A$(I)=A$(I)+CHR$(221):NEXT
530 FOR I=0 TO 2:A$(I)=A$(I)+CHR$(32)+CHR$(32):NEXT
540 FOR X=1 TO 38:A$(0)=A$(0)+CHR$(221):NEXT
550 FOR I=1 TO 3 STEP 2:FOR X=1 TO 19:A$(I)=A$(I)+ CHR$(117)+CHR$(105):NEXT:NEXT
560 FOR I=2 TO 4 STEP 2:A$(I)=A$(I)+CHR$(221):FOR X=1 TO 18 
565 A$(I)=A$(I)+CHR$(117)+CHR$(105):NEXT:A$(I)=A$(I)+CHR$(221):NEXT 
570 S$(0)="{down}{down}":FOR I=1 TO 8:S$(I)=S$(I-1)+"{down}{down}":NEXT:RETURN