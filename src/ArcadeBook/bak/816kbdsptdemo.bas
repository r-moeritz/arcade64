   10 poke 53281,0:v=53248:x=120:y=120:print"{clr}"
   15 for x=830 to 953:read a:poke x,a:next
   20 for x=0 to 63:read a:poke 12288+x,a:next
   30 poke 2040,192
   40 poke v+21,1
   50 poke v+39,10
   60 poke v+0,x
   70 poke v+1,y
   80 poke 251,46:poke 252,55:poke 253,45:poke 254,53
  100 sys(830):goto 100
  999 rem ml routine data
 1000 data 165,197,197,251,208,4,206,1,208,96,197,252,208
 1010 data 4,238,1,208,96,197,253,208,38,173,0,208,208,29,173,16,208,41
 1020 data 1,208,14,173,16,208,9,1,141,16,208,169,80,141,0,208,96,173,16
 1030 data 208,41,254,141,16,208,206,0,208,96,197,254,208,42,238,0,208,240
 1040 data 28,169,80,205,0,208,208,20,173,16,208,41,1,240,13,173,16,208
 1050 data 41,254,141,16,208,169,0,141,0,208,96,173,16,208,9,1,141,16,208
 1060 data 96,197,80,208,6,169,1,141,60,3,96,169,0,141,60,3,96,234,234
59999 rem sprite data
60000 data 0,0,0,0,0,0,7,255,224,15,255,240,25,36,152,31,255,248,15,255
60010 data 240,7,255,224,0,24,0,32,189,4,49,255,140,43,255,212,36,60,36,40,24
60020 data 20,48,36,12,32,90,4,0,189,0,1,126,128,3,0,192,0,0,0,0,0,0,36,40,24