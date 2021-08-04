10 PRINT"{clear}" :rem 197
20 FOR BR=0 TO 15 :rem 83 
30 FOR BG=0 TO 15 :rem 73
40 POKE 53280,BR :rem 85 
50 POKE 53281,BG :rem 76
60 PRINT "{home}{down}{down}{down}{down}{right}border color="BR;"{right}{right} background color="BG"{LEFT} "
70 FOR T=0 TO 1000:NEXT :rem 236 
80 NEXT:NEXT