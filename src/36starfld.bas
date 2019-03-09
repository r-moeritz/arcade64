   10 addr=1024:cl=55296:print"0{clr}"
   20 q=100*rnd(9)+20:q1=6*rnd(9)+2
   30 for i=0 to q:x=1000*rnd(9):n=46:gosub 150:next
   40 for i=0 to q1:x=1000*rnd(9):n=81:gosub 150:next
   50 for i=0 to 999:next:print"{clr}":goto 20
  150 poke addr+x,n:poke cl+x,n:return
