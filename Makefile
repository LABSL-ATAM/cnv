all: epub pdf odt html latex rtf manpage asciidoc opendocument


pdf: 
	pandoc convenio.md -o convenio.pdf

odt:
	pandoc -s convenio.md -o convenio.odt

html:
	pandoc -s convenio.md -o convenio.html

latex:
	pandoc -s convenio.md -o convenio.tex

rtf:
	pandoc -s convenio.md -o convenio.rtf

epub:
	pandoc -s convenio.md -o convenio.epub

manpage:
	pandoc -t man -s convenio.md -o convenio.1

asciidoc:
	pandoc -s -S convenio.md -t asciidoc -o convenio.txt

opendocument:
	pandoc convenio.md -s -t opendocument -o convenio.xml


clean:
	rm convenio.pdf convenio.html convenio.odt convenio.tex convenio.1 convenio.rtf convenio.xml convenio.txt



