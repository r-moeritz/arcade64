900 SC=(PEEK(53272)AND 240)*64:CM=55296
910 FOR J=0 TO 15:POKE 53281,J:POKE 53280,1:PRINT"{clear}"
920 FOR I=0 TO 1000:N=INT(RND(9)*8):POKE SC+I,N+48:POKE CM+I,N
930 NEXT:NEXT:GOTO 910