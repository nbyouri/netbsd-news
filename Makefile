TARGETS: build serve git 

all: ${BUILD}

serve:
	jekyll serve&

build:
	jekyll build

deploy: 
	rsync -avhz --rsh="ssh -p5555" _site/* youri@netbsd-news.me:/usr/pkg/share/www/netbsd-news/; 

git:
	git add -A;
	git commit -m 'update';
	git push;
