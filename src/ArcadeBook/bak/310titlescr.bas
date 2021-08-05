   10 print"{clr}":poke 53281,0:tr=99
   20 for x=1024 to 1063:gosub 200:next x
   30 for x=1063 to 2023 step 40:gosub 200:next
   40 for x=2023 to 1983 step -1:gosub 200:next x
   50 for x=1984 to 1024 step -40:gosub 200:next x
   60 for x=1184 to 1224:gosub 200:next x
   70 print "{home}{down}{lgrn}";tab(15) "space game"
   80 print"{down}{rght}{rght}{gry3}time remaining:"tr;"{rght}{rght}{rght}{rght}{rght}{lred}score:"sc;"{lgrn}"
   90 tr=tr-1:if tr=0 then tr=99
  100 sc=sc+5:if sc>205 then sc=0
  110 for t=0 to 1000:next
  120 goto 70
  200 poke x,42:poke x+54272,3
  210 for t=0 to 10:next
  220 return
