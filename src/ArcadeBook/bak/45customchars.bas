   20 cc=12:vm=0:ch=cc*1024:cm=53248
   30 gosub 1100:poke 53272,(peek(53272) and 240) or cc
   40 print "{clr}"
  100 for i=0 to 159:poke 1024+i,i:poke 55296+i,0:next
  120 get a$:if a$="" then 120
  130 poke 53281,15:print chr$(31)
  140 for i=64 to 95:print"{home}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}"tab(19)chr$(18)chr$(i)
  150 for j=0 to 200:next
  160 if peek(197)=64 then 160
  170 next:goto 140
 1100 poke 56334,peek(56334) and 254:poke 1, peek(1) and 251
 1110 rm=cm-ch:for i=ch to ch+1023:poke i,peek(rm+i):next
 1120 poke 1, peek(1) or 4:poke 56334,peek(56334) or 1
 1130 for i=ch+1024 to ch+1280:read n:poke i,n:next:return
 1299 rem starship up,left,down,right
 1300 data 24,24,217,255,219,153,129,195
 1310 data 63,25,16,252,252,16,25,63
 1320 data 195,129,153,219,255,153,24,24
 1330 data 252,152,8,63,63,8,152,252
 1339 rem rocket up,left,down,right
 1340 data 16,56,56,56,124,124,84,84
 1350 data 0,0,15,124,255,124,15,0
 1360 data 42,42,62,62,28,28,28,8
 1370 data 0,240,62,255,62,240,0,0
 1379 rem deciduous tree
 1380 data 57,87,186,85,20,24,24,60
 1389 rem evergreen tree
 1390 data 8,28,8,62,28,127,60,235
 1399 rem running figure left,right
 1400 data 48,48,28,20,112,30,18,48
 1410 data 12,12,56,40,14,120,72,12
 1419 rem missile 1&2 left, 1&2 right
 1420 data 0,0,0,3,14,3,0,0
 1430 data 0,0,0,48,224,48,0,0
 1440 data 0,0,0,192,112,192,0,0
 1450 data 0,0,0,12,7,12,0,0
 1459 rem flickering fire (2 chars)
 1460 data 0,0,82,16,106,38,28,0
 1470 data 0,0,42,8,86,100,56,0
 1479 rem cyclist (complex) left
 1480 data 1,1,28,19,24,55,39,24
 1490 data 128,128,128,128,176,200,72,48
 1499 rem cyclist (complex) right
 1500 data 1,1,1,1,13,19,18,12
 1510 data 128,128,56,200,24,236,228,24
 1519 rem asteroid, rotate 4 positions
 1520 data 0,48,120,124,30,124,24,0
 1530 data 0,44,46,126,124,56,16,0
 1540 data 0,24,62,120,62,30,12,0
 1550 data 0,8,28,62,126,116,52,0
 1559 rem boulder
 1560 data 0,0,28,30,30,126,127,255
 1569 rem flickering star (2 chars)
 1570 data 0,8,28,54,28,8,0,0
 1580 data 0,20,54,8,54,20,0,0
 1589 rem pig
 1590 data 0,0,0,32,62,255,126,34
 1599 rem sailboat left and right
 1600 data 16,24,44,126,111,16,126,62
 1610 data 8,24,52,126,246,8,126,124
 1620 data 0,0,0,0,0,0,0,0
