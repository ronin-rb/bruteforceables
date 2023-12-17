all: run

build: Dockerfile
	docker build -t bruteforceable-http-basic-auth .

run: build
	docker run --rm -it -p 8080:80 bruteforceable-http-basic-auth

clean:
	docker image rm bruteforceable-http-basic-auth

.PHONY: all build run clean
