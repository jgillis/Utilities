MAN=$(wildcard *.man)
GZ=$(MAN:.man=.3.gz)

all: man/man3  $(addprefix man/man3/,${GZ}) 
	echo $(addprefix man/man3/,${GZ}) 

man/man3:
	mkdir -p man/man3


man/man3/%.3.gz: %.man
	txt2man $< > /tmp/$(<:.man=.3)
	gzip /tmp/$(<:.man=.3) -c > man/man3/$(<:.man=.3.gz)
