   10 dim dr$(1)
   20 cc=14:ch=cc*1024
   30 print chr$(149):poke 53272,(peek(53272) and 240) or cc:poke 53281,0
   40 gosub 300:gosub 400
   50 speed=99
   97 rem
   98 rem move left to right
   99 rem
  100 for i=0 to 35:print down$tab(i)dr$(1)
  110 for wa=0 to speed:next:next
  117 rem
  118 rem move right to left
  119 rem
  120 for i=35 to 0 step -1:print down$tab(i)dr$(0)
  130 for wa=0 to speed:next:next
  140 goto 100
  297 rem
  298 rem make monster set
  299 rem
  300 for i=0 to 11:t=i*8:for j=ch+t to ch+t+7
  310 read n:poke j,n:next:next
  320 restore:for h=0 to 8 step 4:for i=0 to 3:for j=0 to 7
  330 t=ch+184-(((i+8-h))*8)+j
  337 rem
  338 rem byte-flipping routine
  339 rem
  340 read n:for k=0 to 7:n=n*2
  350 if n>255 then w=w+2^k:n=n-256
  360 next k:poke t,w:w=0:next:next:next
  370 for i=256+ch to 263+ch:poke i,0:next i:return
  397 rem
  398 rem set up strings
  399 rem
  400 down$="{home}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}"
  410 dr$(0)="@abc {down}{left}{left}{left}{left}{left}defg {down}{left}{left}{left}{left}{left}hijk "
  420 dr$(1)=" lmno{down}{left}{left}{left}{left}{left} pqrs{down}{left}{left}{left}{left}{left} tuvw "
  430 return
  497 rem
  498 rem data for dragon
  499 rem
  500 data 0,0,0,1,15,28,8,9
  510 data 16,48,240,152,248,124,206,135
  520 data 8,132,70,39,55,55,55,119
  530 data 0,0,0,192,128,128,192,248
  540 data 0,0,2,1,5,2,0,0
  550 data 3,7,15,30,30,190,95,15
  560 data 175,159,255,96,0,0,0,128
  570 data 240,240,248,255,48,0,2,194
  580 data 0,0,4,11,1,2,0,0
  590 data 23,27,61,224,0,0,12,19
  600 data 241,255,254,248,225,98,194,161
  610 data 226,49,25,50,194,9,21,226
