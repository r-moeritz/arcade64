# Paths
SRCDIR := src
OBJDIR := build
SRC := $(wildcard $(SRCDIR)/*.bas)
PRG := $(SRC:src/%.bas=$(OBJDIR)/%.prg)

# Commands
MKPRG = petcat -w2 -o $@ --
RM := rm -rf
MKDIR := mkdir -p

# Rules
$(OBJDIR)/%.prg: $(SRCDIR)/%.bas
	$(MKPRG) $<

# Targets
release: MKPRG = mospeed -target=$@

.PHONY: all release clean

all: $(PRG)
release: $(PRG)

$(SRC): | $(OBJDIR)

$(OBJDIR):
	$(MKDIR) $(OBJDIR)

clean:
	$(RM) $(OBJDIR)
