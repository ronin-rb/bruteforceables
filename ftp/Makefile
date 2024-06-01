all: run

build: Dockerfile
	docker build -t bruteforceable-ftp .

run: build
	docker run --rm -it -p 20:20 -p 21:21 -p 21100-21110:21100-21110 bruteforceable-ftp

clean:
	docker image rm bruteforceable-ftp

.PHONY: all build run clean
