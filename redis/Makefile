all: run

build: Dockerfile
	docker build -t bruteforceable-redis .

run: build
	docker run --rm -it -p 6379:6379 bruteforceable-redis

clean:
	docker image rm bruteforceable-redis

.PHONY: all build run clean
