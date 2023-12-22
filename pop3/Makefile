all: run

build: Dockerfile
	docker build -t bruteforceable-pop3 .

run: build
	docker run --rm -it -p 110:110 -p 995:995 bruteforceable-pop3

clean:
	docker image rm bruteforceable-pop3

.PHONY: all build run clean
