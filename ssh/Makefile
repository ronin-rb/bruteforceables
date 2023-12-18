all: run

build: Dockerfile
	docker build -t bruteforceable-ssh .

run: build
	docker run --rm -it -p 8080:80 bruteforceable-ssh

clean:
	docker image rm bruteforceable-ssh

.PHONY: all build run clean
