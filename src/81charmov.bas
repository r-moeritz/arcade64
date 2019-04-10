  10 poke 53281,1:print"{clr}":poke 657,128
  15 sc=peek(648):cm=55296:sc=sc*256:ol=1:cl=0:fg=0:poke sc+ol,fg:poke cm+ol,cl
  20 a=peek(197):lr=(a=45)-(a=53):ud=40*((a=46)-(a=55))
  25 if lr=0 and ud=0 then 20
  30 nl=ol+lr+ud:on -(lr<>0)-2*(ud<>0) gosub 100,200
  35 if nl=ol then 20
  40 poke sc+ol,32:poke sc+nl,fg:poke cm+nl,cl:ol=nl:goto 20
 100 eh=int(nl/40):eh=nl-40*eh
 110 if (eh=0 and lr=1) or (eh=39 and lr=-1) then nl=ol
 120 return
 200 if nl>1000 or nl<0 then nl=ol
 210 return
