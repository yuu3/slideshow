SRC := $(filter-out ./README.md, $(sort $(wildcard ./*.md)))

all: index.html

index.html: $(SRC)
	pandoc -t revealjs -V transition=fade --mathjax -o $@ -s $(SRC)

clean:
	rm -f index.html
