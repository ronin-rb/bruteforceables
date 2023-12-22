all: run

build: Dockerfile
	docker build -t bruteforceable-http-html-login-form .

run: build
	docker run --rm -it -p 8080:8000 bruteforceable-http-html-login-form

clean:
	docker image rm bruteforceable-http-html-login-form

.PHONY: all build run clean
