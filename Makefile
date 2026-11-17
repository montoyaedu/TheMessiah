# make            -> tutti i PDF in build/
# make png        -> anteprime PNG (utile per controllare a occhio)
# make svg        -> SVG per il README
# make build/allegro-a4.pdf  -> una sola edizione

LILY     = lilypond -dno-point-and-click -I $(CURDIR)
EDITIONS = $(wildcard editions/*.ly)
SOURCES  = $(wildcard music/*.ly layers/*.ly lib/*.ly)
NAMES    = $(notdir $(basename $(EDITIONS)))

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

clean:
	rm -rf build

.PHONY: all png svg clean
