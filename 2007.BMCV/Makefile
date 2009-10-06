TARGET = paper

pdf:
	pdflatex $(TARGET) && bibtex $(TARGET) && pdflatex $(TARGET) && \
	pdflatex $(TARGET)

clean:
	rm -f *.aux *.log *.blg *.bbl *~ *.dvi *.out *.nav *.snm *.toc $(TARGETS)

