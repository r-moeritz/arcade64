   10 poke 53281,0:print"{clr}":v=53248:x=120:y=120
   15 for x=828 to 936:read a:poke x,a:next
   20 for x=0 to 63:read a:poke 12288+x,a:next
   30 poke 2040,192
   40 poke v+21,1
   50 poke v+39,10
   60 poke v+0,x
   70 poke v+1,y
   80 for t=0 to 1000:sys(828):next:goto 80
  990 rem data for js routine
  995 data 173,1,220,74,176,3,206,1,208,74,176,3,238,1,208,74,176,42,173
  996 data 0,208,208,31,173,16,208,41,1,208,16,173,16,208,9,1,141,16,208
  997 data 169,80,141,0,208,96,234,234,173,16,208,41,254,141,16,208,206
  998 data 0,208,96,234,234,74,176,32,238,0,208,240,30,169,80,205,0,208
  999 data 208,20,173,16,208,41,1,240,13,173,16,208,41,254,141,16,208,169
 1000 data 0,141,0,208,96,234,234,173,16,208,9,1,141,16,208,96,234,234
59999 rem sprite data
60000 data 0,0,0,0,0,0,7,255,224,15,255,240,25,36,152,31,255,248,15,255
60010 data 240,7,255,224,0,24,0,32,189,4,49,255,140,43,255,212,36,60,36,40,24
60020 data 20,48,36,12,32,90,4,0,189,0,1,126,128,3,0,192,0,0,0,0,0,0,36,40,24