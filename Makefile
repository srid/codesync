PWD := $(shell pwd)
IMG := "srid/codesync"

all:
	docker build -t ${IMG} .

shell:
	docker run -i -t --rm --entrypoint=/bin/bash ${IMG} -i

run:
	mkdir -p ${PWD}/simplepaas
	docker run --rm -v ${PWD}/simplepaas:/code ${IMG}
