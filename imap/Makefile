all: run

build: Dockerfile
	docker build -t bruteforceable-imap .

run: build
	docker run --rm -it -p 143:143 -p 995:995 bruteforceable-imap

clean:
	docker image rm bruteforceable-imap

.PHONY: all build run clean
