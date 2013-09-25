all: build

site: site.hs
	ghc --make site.hs

build: site
	./site build

preview: site
	./site preview

clean: site
	./site clean
