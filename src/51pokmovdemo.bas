   1 rem ---- setup variables --------------------------------------------------
   5 rem sm:scr mem start addr, cm:col mem start addr, ev:end of scr vert
  10 rem eh:end of scr horz, bv:beg of scr vert, bh:beg of scr horz
  15 rem hn:num cols on scr, vn:num rows on scr, fg:scr code of fig
  17 rem bl:blank, fc:fig colour, bc:bg colour, xc: fg colour of bl char
  20 sm=1024:cm=55296:ev=23:eh=38:bv=1:bh=1:hn=40:vn=25
  30 fg=87:bl=32:fc=6:bc=15:xc=0
  35 rem ---- set bg colour and clear screen -----------------------------------
  40 poke 53281,bc:print chr$(147)
  45 rem ---- set initial character movement and position values ---------------
  46 rem ---- ... and make figure appear on screen
  47 rem h:horz dir of mov (-1=L,1=R), v:vert dir of mov (-1=U,1=D)
  48 rem xh,xv:old horz & vert pos,xp:old offset
  50 h=1:v=0:xh=19:xv=11:xp=xh+40*xv:poke cm+xp,fc:poke sm+xp,fg
  60 rem ---- main loop
  70 rem check timer (ti$); if enough time passed, get random dir values @ 990
 100 if val(ti$)>1 then gosub 990:ti$="000000"
 110 rem if both dirs are 0, no movement, so get new dir values @ 990
 190 if h=0 and v=0 then gosub 990:goto 190
 195 rem ---- movement routine
 197 rem assign new horizontal position, handling wraparound
 200 nh=xh+h+hn*((xh>eh and h=1)-(xh<bh and h=-1))
 205 rem assign new vertical position, handling wraparound
 210 nv=xv+v+vn*((xv>ev and v=1)-(xv<bv and v=-1))
 215 rem set new offst (np) of figure byte from start of screen and colour mem
 220 np=nh+nv*40
 225 rem poke new colour, erase old char & poke new char, then erase old colour
 230 poke cm+np,fc:poke sm+xp,bl:poke sm+np,fg:poke cm+xp,xc
 235 rem set old value variables (used to erase figure next movement)
 240 xp=np:xh=nh:xv=nv
 250 rem close movement loop
 290 goto 100
 300 rem ---- random direction subroutine
 310 rem sets h and v to either -1, 0, or 1
 990 h=sgn(int(rnd(9)*3)-1):v=sgn(int(rnd(9)*3)-1):return
