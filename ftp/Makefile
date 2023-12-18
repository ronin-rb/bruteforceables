all: run

build: Dockerfile
	docker build -t bruteforceable-ftp .

run: build
	docker run --rm -it -p 8080:80 bruteforceable-ftp

clean:
	docker image rm bruteforceable-ftp

.PHONY: all build run clean
