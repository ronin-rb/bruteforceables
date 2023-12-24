all: run

build: Dockerfile
	docker build -t bruteforceable-postgres .

run: build
	docker run --rm -it -p 5432:5432 bruteforceable-postgres

clean:
	docker image rm bruteforceable-postgres

.PHONY: all build run clean
