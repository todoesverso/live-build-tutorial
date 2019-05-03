build:
	docker build -t live-build:latest .

run:
	docker run -it --rm --privileged -v ${PWD}/build:/build live-build:latest /bin/bash

emu:
	qemu-kvm -m 512m -cdrom build/live-image-amd64.hybrid.iso

.PHONY: build run emu
