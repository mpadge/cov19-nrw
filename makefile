LFILE = cov19-nrw

all: knith move 

knith: $(LFILE).Rmd
	echo "rmarkdown::render('$(LFILE).Rmd',output_file='$(LFILE).html')" | R --no-save -q

move: $(LFILE).html
	mv $(LFILE).html docs/index.html

open:
	xdg-open docs/index.html &

clean:
	rm -rf *.html *.png
