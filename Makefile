# make                          -> tutte le edizioni di tutti i brani, in build/<brano>/
# make BRANO=messiah-overture   -> solo quel brano
# make png | make svg           -> le stesse in PNG o SVG
# make build/messiah-overture/overture-classica.pdf -> una sola edizione
#
# Combinazione a scelta, senza creare un file in editions/:
#   make stampa BRANO=messiah-overture IMPAGINAZIONE=ariosa DITA=principale TAB=si COLORI=si
# IMPAGINAZIONE: un file di impaginazioni/   (classica, compatta, ariosa, telefono)
# DITA:          un file di brani/<brano>/dita/, oppure "nessuna"
# TAB, COLORI:   si | no
# PARTITURA:     una partitura definita in brani/<brano>/partiture.ly
# Il risultato e' build/<brano>/stampa-<impaginazione>.pdf

LILY     = lilypond -dno-point-and-click -I $(CURDIR)

BRANO         ?= *
IMPAGINAZIONE ?= classica
DITA          ?= principale
TAB           ?= no
COLORI        ?= no
PARTITURA     ?= overtureScore

EDITIONS = $(wildcard brani/$(BRANO)/editions/*.ly)
SOURCES  = $(wildcard lib/*.ly impaginazioni/*.ly brani/*/*.ly brani/*/*/*.ly)
# brani/<brano>/editions/<edizione>.ly  ->  <brano>/<edizione>
NAMES    = $(foreach e,$(EDITIONS),$(word 2,$(subst /, ,$(e)))/$(notdir $(basename $(e))))

all: $(NAMES:%=build/%.pdf)

.SECONDEXPANSION:
build/%.pdf: brani/$$(*D)/editions/$$(*F).ly $(SOURCES)
	@mkdir -p $(@D)
	$(LILY) -o build/$* $<

png:
	for f in $(NAMES); do mkdir -p build/$$(dirname $$f); \
	  $(LILY) --png -dresolution=110 -o build/$$f brani/$$(dirname $$f)/editions/$$(basename $$f).ly || exit 1; done

svg:
	for f in $(NAMES); do mkdir -p build/$$(dirname $$f); \
	  $(LILY) --svg -o build/$$f brani/$$(dirname $$f)/editions/$$(basename $$f).ly || exit 1; done

stampa:
	@test "$(BRANO)" != "*" || { echo "indica il brano: make stampa BRANO=messiah-overture"; exit 1; }
	@mkdir -p build/$(BRANO)
	@{ printf '%s\n' '\version "2.24.0"'; \
	   printf '%s\n' '\include "../../impaginazioni/$(IMPAGINAZIONE).ly"'; \
	   [ "$(DITA)" = nessuna ] || printf '%s\n' '\include "../../brani/$(BRANO)/dita/$(DITA).ly"'; \
	   [ "$(TAB)" != si ] || printf '%s\n' 'intavolatura = ##t'; \
	   [ "$(COLORI)" != si ] || printf '%s\n' 'coloriVoci = ##t'; \
	   printf '%s\n' '\include "../../brani/$(BRANO)/brano.ly"'; \
	   printf '%s\n' '\include "../../brani/$(BRANO)/intestazione.ly"'; \
	   printf '%s\n' '\$(PARTITURA)'; } > build/$(BRANO)/stampa-$(IMPAGINAZIONE).ly
	$(LILY) -o build/$(BRANO)/stampa-$(IMPAGINAZIONE) build/$(BRANO)/stampa-$(IMPAGINAZIONE).ly

# make pubblica -> ricompila tutto, copia i PDF delle edizioni in pdf/<brano>/
#                  e aggiorna la tabella in testa al README
pubblica: all
	@for f in $(NAMES); do mkdir -p pdf/$$(dirname $$f); cp build/$$f.pdf pdf/$$f.pdf; done
	python3 strumenti/tabella_pdf.py

clean:
	rm -rf build

.PHONY: all png svg stampa pubblica clean
