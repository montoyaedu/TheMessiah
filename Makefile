# make                -> tutte le edizioni di editions/ in PDF, dentro build/
# make png | make svg -> le stesse in PNG o SVG
# make build/overture-classica.pdf -> una sola edizione
#
# Combinazione a scelta, senza creare un file in editions/:
#   make stampa IMPAGINAZIONE=ariosa DITA=principale TAB=si COLORI=si
# IMPAGINAZIONE: un file di impaginazioni/   (classica, compatta, ariosa, telefono)
# DITA:          un file di dita/, oppure "nessuna"
# TAB, COLORI:   si | no
# PARTITURA:     overtureScore | overtureScoreDoppioRigo | allegroScore |
#                allegroScoreVociSeparate | finaleScore
# Il risultato e' build/stampa-<impaginazione>.pdf

LILY     = lilypond -dno-point-and-click -I $(CURDIR)
EDITIONS = $(wildcard editions/*.ly)
SOURCES  = $(wildcard music/*.ly dita/*.ly armonia/*.ly layers/*.ly lib/*.ly impaginazioni/*.ly)
NAMES    = $(notdir $(basename $(EDITIONS)))

IMPAGINAZIONE ?= classica
DITA          ?= principale
TAB           ?= no
COLORI        ?= no
PARTITURA     ?= overtureScore

all: $(NAMES:%=build/%.pdf)

build/%.pdf: editions/%.ly $(SOURCES)
	@mkdir -p build
	$(LILY) -o build/$* $<

png: $(EDITIONS)
	@mkdir -p build
	for f in $(NAMES); do $(LILY) --png -dresolution=110 -o build/$$f editions/$$f.ly; done

svg: $(EDITIONS)
	@mkdir -p build
	for f in $(NAMES); do $(LILY) --svg -o build/$$f editions/$$f.ly; done

stampa:
	@mkdir -p build
	@{ printf '%s\n' '\version "2.24.0"'; \
	   printf '%s\n' '\include "../impaginazioni/$(IMPAGINAZIONE).ly"'; \
	   [ "$(DITA)" = nessuna ] || printf '%s\n' '\include "../dita/$(DITA).ly"'; \
	   [ "$(TAB)" != si ] || printf '%s\n' 'intavolatura = ##t'; \
	   [ "$(COLORI)" != si ] || printf '%s\n' 'coloriVoci = ##t'; \
	   printf '%s\n' '\include "../lib/tutto.ly"'; \
	   printf '%s\n' '\include "../lib/intestazione.ly"'; \
	   printf '%s\n' '\$(PARTITURA)'; } > build/stampa-$(IMPAGINAZIONE).ly
	$(LILY) -o build/stampa-$(IMPAGINAZIONE) build/stampa-$(IMPAGINAZIONE).ly

clean:
	rm -rf build

.PHONY: all png svg stampa clean
