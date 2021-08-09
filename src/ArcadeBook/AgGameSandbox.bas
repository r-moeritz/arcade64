2 rem set (c)haracter value, and (l)ocation
4 l=1024 + 840:c=42:cm=54272: ADDR=1024 :rem 128
5 VM=0:CC=14:CH=VM+CC*1024:RM=53248-CH:GOSUB 60090:gosub 60410
9 rem set screen background, sprite coordinates
10 poke 53281,0:v=53248:x=120:y=120:x2=150:y2=50
14 rem read data for ml joystick subroutine
15 for x=828 to 949:read a:poke x,a:next
19 rem read data for sprite creation
20 for x=0 to 63:read a:poke 12288+x,a:next
29 rem set both sprite pointers to look at 12288
30 poke 2040,192:poke 2041,192
39 rem enable both sprite 0 and 1
40 poke v+21,3
49 rem set sprite colours
50 poke v+39,10:poke v+40,7
59 rem set locations of both sprites
60 poke v+0,x:poke v+2,x2
70 poke v+1,y:poke v+3,y2
79 rem call ml js routine
80 sys(937)
89 rem move sprite 1 vertically down the screen, w. wraparound
90 y2=y2+3:if y2>255 then y2=0
100 poke v+3,y2
109 rem print value of v+30 (changes from 0 to 3 when sprites collide)
110 print"{home}{white}sprite to sprite="peek(v+30)
114 rem print value of v+31 (changes from 0 to 1 or 2 when sprite+char collide)
115 print"{down}{down}sprite to character="peek(v+31)
119 rem set character location, wraparound if necessary
120 l=l-1:if l=1024+800 then poke l+cm,5:poke l+1,42: l=1024+839
129 rem display char at new location, with colour, and erase from old location
130 poke l,c:poke l+cm,5:poke l+1,c
150 goto 80
990 rem data for js routine
995 data 173,1,220,74,176,3,206,1,208,74,176,3,238,1,208,74,176,42,173
996 data 0,208,208,31,173,16,208,41,1,208,16,173,16,208,9,1,141,16,208
997 data 169,80,141,0,208,96,234,234,173,16,208,41,254,141,16,208,206
998 data 0,208,96,234,234,74,176,32,238,0,208,240,30,169,80,205,0,208
999 data 208,20,173,16,208,41,1,240,13,173,16,208,41,254,141,16,208,169
1000 data 0,141,0,208,96,234,234,173,16,208,9,1,141,16,208,96,234,234
1010 data 32,60,3,32,60,3,32,60,3,32,60,3,96
59999 rem sprite data
60000 data 0,0,0,0,0,0,7,255,224,15,255,240,25,36,152,31,255,248,15,255
60010 data 240,7,255,224,0,24,0,32,189,4,49,255,140,43,255,212,36,60,36,40,24
60020 data 20,48,36,12,32,90,4,0,189,0,1,126,128,3,0,192,0,0,0,0,0,0,36,40,24
60030Rem: draw grass
60040 FOR X=800 TO 1000 :rem 117
60050 POKE 55296 + x, 5
60060 POKE ADDR+X,32 + 128:NEXT
60070 RETURN
60080 REM***Move chars
60090 POKE 53272,(PEEK(53272)AND 240)ORCC:REM char mem pointer
60100 POKE 56334,PEEK(56334)AND 254:POKE 1,PEEK(1)AND 251:REM Switch In ROM
60200 FOR I=CH TO CH+511:POKE I,PEEK(I+RM):NEXT:REM move chars
60300 POKE 1,PEEK(1) OR 4:POKE 56334,PEEK(56334)OR 1:REM Switch in I/O
60400 RETURN
60410 FOR I=CH+8*27 TO CH+8*31 STEP 8:FOR J=I TO I+7:READ N:POKE J,N:NEXT:NEXT
60412 ?"done with data"
60415 RETURN
60420 DATA 12,12,9,118,8,24,36,72
60430 DATA 16,16,56,124,254,146,56,40
60440 DATA 16,124,248,248,124,147,127,62
60450 DATA 170,0,242,146,159,255,126,109
60460 DATA 0,0,28,254,28,126,129,126
