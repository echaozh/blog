all: build

site: site.hs
	ghc --make site.hs

build: site
	./site build

preview: build
	./site preview

clean: site
	./site clean
