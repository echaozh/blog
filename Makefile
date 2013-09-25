names = test
hss = $(addsuffix .hs,$(addprefix template-build/,$(names)))
templates = $(addsuffix .html,$(addprefix the-site/templates/,$(names)))


all: site

clean:
	rm -f $(hss)
	rm -f $(templates)
	make -C the-site clean

$(templates): the-site/templates/%.html: template-build/%.hs
	runghc $< >$@

$(hss): template-build/%.hs: template-src/%.hs_ | template-build
	./genhs.bash $< >$@

template-build:
	mkdir -p template-build

site: $(templates)
	make -C the-site

preview: site
	make -C the-site preview
