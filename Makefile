# Paths
SRC := $(wildcard ./src/*.bas)
OBJDIR := ./build
LABEL := arcade64
ID := ar
PRG := $(OBJDIR)/$(LABEL).prg
D64 := $(OBJDIR)/$(LABEL).d64

# Commands
MKPRG := petcat -w2 -o $(PRG) --
MKD64 := c1541 -format $(LABEL),$(ID) d64
RM := rm -rf
MKDIR := mkdir -p

# Targets
release: MKPRG := mospeed -target=$(PRG)

.PHONY: all d64 release clean

all: d64
d64: $(D64)
release: $(D64)

$(D64): $(PRG)
	$(MKD64) $(D64) -attach $(D64) -write $(PRG) $(LABEL)

$(PRG): $(SRC)
	$(MKPRG) $(SRC)

$(SRC): | $(OBJDIR)

$(OBJDIR):
	$(MKDIR) $(OBJDIR)

clean:
	$(RM) $(OBJDIR)
