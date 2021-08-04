100 poke 53281,1: rem set background color #0 to white
110 poke 53282,3: rem set background color #1 to cyan
120 poke 53282,8: rem set background color #2 to orange
130 poke 53270,peek(53270)or16: rem turn on multicolor mode
140 c=13*4096+8*256: rem set c to point to color memory
150 printchr$(147)"aaaaaaaaaa"
160 fori=0to9
170 pokec+i,8: rem use multi black
180 next