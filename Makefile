SRC := $(filter-out ./README.md, $(sort $(wildcard ./*.md)))
CUSTOM_CSS := https://yuu.github.io/slideshow/custom.css

all: index.html

index.html: $(SRC)
	pandoc -s -t revealjs \
        -V revealjs-url=https://unpkg.com/reveal.js/ \
        --css=$(CUSTOM_CSS) \
	-V transition=fade \
	-V theme:beige \
	-V width=1920 -V height=1080 \
	--mathjax -o $@ $(SRC)

refleash: index.html
	$(eval termid := $(shell xdotool getactivewindow))
	$(eval browid := $(shell xdotool search --onlyvisible --class "Google-Chrome"))
	xdotool windowfocus $(browid) key "F5"
	xdotool windowfocus $(termid)

clean:
	rm -f index.html
