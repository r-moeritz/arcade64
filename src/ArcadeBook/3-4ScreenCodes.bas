10 ADDR=1024:s$="this is a test bitch" :rem 7
20 PRINT "{clear}"s$ :rem 61
25 PRINT "code";TAB(5);"";TAB(8);"asc"
30 FOR X=1 TO 20 :rem 24
40 A=PEEK(ADDR+X-1) :rem 84
50 A$=mid$(s$,X,1)
60 PRINT A;TAB(5);A$;TAB(8);ASC(A$) :rem 207
70 NEXT X