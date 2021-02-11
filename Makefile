copy: 
	cp ../markdown-blog/target/release/markdown-blog ./

build: copy
	./markdown-blog -t ../sielakos.github.io

deploy: build
	cd ../sielakos.github.io && \
	git add . && \
	git commit -nm 'update' && \
	git push

serve: copy
	./markdown-blog -sw

.DEFAULT_GOAL := deploy