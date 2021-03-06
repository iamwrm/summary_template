# type "make" command in Unix to create asme2e.pdf file 
# and use "make clean" to clean junk   <Ren Wang iamwrm@gmail.com>
all:
	latex asme2e
	bibtex asme2e
	latex asme2e
	latex asme2e
	dvips -o asme2e.ps asme2e
	ps2pdf asme2e.ps asme2e.pdf

clean:
	(rm -rf *.ps *.log *.dvi *.aux *.*% *.lof *.lop *.lot *.toc *.idx *.ilg *.ind *.bbl *blg *.fls *latexmk)
