100 poke53270,peek(53270)or16: rem turn on multicolor mode
110 print chr$(147)chr$(18);
120 print"{orange*2}";: rem type c= & 1 for orange or multicolor black bg
130 forl=1to22:printchr$(65);:next
135 fort=1to500:next
140 print"{blue*2}";: rem type ctrl & 7 for blue color change
145 fort=1to500:next
150 print"{black}hit a key"
160 get a$:if a$=""then160
170 x=int(rnd(1)*16)
180 poke 53282,x
190 goto 160