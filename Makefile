SRC := $(filter-out ./README.md, $(sort $(wildcard ./*.md)))

all: index.html

index.html: $(SRC)
	pandoc -s -t revealjs -V revealjs-url=https://yuu.github.io/slideshow/reveal.js -V transition=fade -V theme:beige --mathjax -o $@ $(SRC)

local.html: $(SRC)
	pandoc -s -t revealjs -V revealjs-url=../reveal.js -V transition=fade --mathjax -V theme:beige -o $@ $(SRC)

refleash: index.html
	$(eval termid := $(shell xdotool getactivewindow))
	$(eval browid := $(shell xdotool search --onlyvisible --class "Google-Chrome"))
	xdotool windowfocus $(browid) key "F5"
	xdotool windowfocus $(termid)

clean:
	rm -f index.html
