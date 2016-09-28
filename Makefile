.PHONY: all clean
all: paper/paper.md paper/paper.html
paper.md: paper/sections/00-abstract.md paper/sections/01-introduction.md paper/sections/02-discussion.md paper/sections/03-conclusions.md
	cat paper/sections/00-abstract.md paper/sections/01-introduction.md paper/sections/02-discussion.md paper/sections/03-conclusions.md > paper/paper.md
paper/paper.html: paper/paper.md
	pandoc -s paper/paper.md -o paper/paper.html
clean:
	rm paper/paper.html