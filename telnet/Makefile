all: run

build: Dockerfile
	docker build -t bruteforceable-telnet .

run: build
	docker run --rm -it -p 23:23 bruteforceable-telnet

clean:
	docker image rm bruteforceable-telnet

.PHONY: all build run clean
