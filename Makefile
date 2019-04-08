# Paths
SRCDIR := src
OBJDIR := build
SRC := $(wildcard $(SRCDIR)/*.bas)
PRG := $(SRC:src/%.bas=$(OBJDIR)/%.prg)
D81 := $(OBJDIR)/arcade.d81

# Commands
MKPRG = petcat -w2 -o $@ --
RM := rm -rf
MKDIR := mkdir -p
MKD81 := c1541 -format arcade,ar d81

# Rules
$(OBJDIR)/%.prg: $(SRCDIR)/%.bas
	$(MKPRG) $<

# Targets
release: MKPRG = mospeed -target=$@

.PHONY: all release d81 prg clean

all: d81
release: $(PRG)
prg: $(PRG)

d81: $(PRG)
	$(MKD81) $(D81) -attach $(D81) $(foreach p,$(PRG),-write $(p) $(subst .prg,,$(subst build/,,$(p))))

$(SRC): | $(OBJDIR)

$(OBJDIR):
	$(MKDIR) $(OBJDIR)

clean:
	$(RM) $(OBJDIR)
