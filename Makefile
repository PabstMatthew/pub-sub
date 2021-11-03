default:
	ivyc *.ivy

clean:
	find . -type f -executable -delete
	rm -f *.cpp *.h *.dsc
