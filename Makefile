MAN=$(wildcard *.man)
GZ=$(MAN:.man=.3.gz)

all: man/man3  man/man3/${GZ} 

man/man3: man
	cd man && mkdir man3

man:
	mkdir man

man/man3/%.3.gz: %.man
	txt2man $< > /tmp/$(<:.man=.3)
	gzip /tmp/$(<:.man=.3) -c > man/man3/$(<:.man=.3.gz)
