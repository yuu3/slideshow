SRC := $(filter-out ./README.md, $(sort $(wildcard ./*.md)))

all: index.html

index.html: $(SRC)
	pandoc -s -t revealjs -V transition=fade --mathjax -o $@ $(SRC)

clean:
	rm -f index.html
