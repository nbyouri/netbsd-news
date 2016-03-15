TARGETS: build serve git 

all: build

serve:
	jekyll serve&

build:
	jekyll build

deploy: 
	rsync -avhz --rsh="ssh -p5555" _site/* youri@netbsd-news.me:~/netbsd-news/; 

git:
	git add -A;
	git commit -m 'update';
	git push;
