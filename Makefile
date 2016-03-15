build:
	jekyll build

serve:
	jekyll serve&

deploy: 
	rsync -avhz --rsh="ssh -p5555" _site/* youri@netbsd-news.me:/usr/pkg/share/www/netbsd-news/; 

git:
	git add -A;
	git commit -m 'update';
	git push;
