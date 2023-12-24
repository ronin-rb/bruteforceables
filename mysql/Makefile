all: run

build: Dockerfile
	docker build -t bruteforceable-mysql .

run: build
	docker run --rm -it -p 3306:3306 bruteforceable-mysql

clean:
	docker image rm bruteforceable-mysql

.PHONY: all build run clean
