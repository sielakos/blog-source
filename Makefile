copy: 
	cp ../markdown-blog/target/release/markdown-blog ./

build: copy
	./markdown-blog

serve: copy
	./markdown-blog -sw

.DEFAULT_GOAL := build