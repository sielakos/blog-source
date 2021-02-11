copy: 
	cp ../markdown-blog/target/release/markdown-blog ./

build: copy
	./markdown-blog
	cp -r ./build ../sielakos.github.io

deploy: build
	cd ../sielakos.github.io
	git add .
	git commit -nm 'update'
	git push

serve: copy
	./markdown-blog -sw

.DEFAULT_GOAL := deploy