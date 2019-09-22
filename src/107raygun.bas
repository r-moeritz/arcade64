   5 print"{clr}{wht}{5 down}{yel}raygun{wht} sound demo----- to hear the next{down}"
   6 print"raygun sounds, just hit any key. the"
   7 print"{down}sounds are done with ring mod. and by"
   8 print"{down}hitting any key you are changing the"
   9 print"{down}frequency of voice 3 to a higher pitch"
  10 poke 53281,0:s=54272:f=0
  15 poke s+14,250:poke s+18,17
  20 poke s,1:poke s+4,16:poke s,15:poke s+6,16:poke s+24,143
  25 poke s+4,21:poke s+18,17:poke s+15,f
  30 for x=200 to 100 step-5:poke s+1,x:next
  35 for x=100 to 0 step-1:poke s+1,x:next
  40 poke s+4,20:poke s+18,16
  50 for t=0 to 100:next:f=f+5:if f=150 then f=150
  55 get a$:if a$="" then 55
  60 goto 25
