help:
	cat "./Makefile"


attempt:
	docker build -t hello-world . && docker run --name hi --rm -p 3000:3000 hello-world && docker rmi hello-world

attempt-clear:
	docker rm -f hi && docker rmi hello-world
