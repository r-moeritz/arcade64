   5 rem multi-filter demo
  10 gosub 200
  18 poke 53281,0:s=54272:x=0:f=35:rm=140
  20 poke s,18:poke s+1,f:poke s+18,16
  25 poke s+15,rm:poke s+14,200:poke s+23,129
  30 poke s+4,32:poke s+5,15:poke s+6,248
  40 poke s+21,8:poke s+129,33:poke s+24,79
  50 poke s+4,21:poke s+22,x
  60 for f=150 to 200 step 5:poke s+1,f:next
  70 x=x+8:if x>255 then x=0
  80 get a$:if a$="{f7}" then rm=rm+5:if rm>200 then rm=2
  85 poke s+15,rm
  90 if a$="{f8}" then poke s+24,0:end
 100 if a$="{f1}" then poke s+24,79
 110 if a$="{f3}" then poke s+24,47
 120 if a$="{f5}" then poke s+24,31
 150 goto 50
 200 print"{clr}{down}"spc(11)"{yel}multi-filter demo{wht}"
 210 print"{2 down}  this demo plays an oscillating, ring"
 220 print"{down}modulated sound as the filter cutoff is{down}"
 230 print"swept from bottom to top. controls are:{2 down}"
 240 print"     {rvon}f1{rvof}  high pass filter{down}"
 250 print"     {rvon}f3{rvof}  band pass filter{down}"
 260 print"     {rvon}f5{rvof}  low pass filter{down}"
 270 print"     {rvon}f7{rvof}  change ring mod. frequency{down}"
 280 print"     {rvon}f8{rvof}  end demo"
 300 return
