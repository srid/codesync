PWD := $(shell pwd)
IMG := "srid/codesync"

all:
	docker build -t ${IMG} .

shell:
	docker run -i -t --rm --entrypoint=/bin/bash ${IMG} -i

run:
	mkdir -p ${PWD}/sample
	docker run --name=codesync --rm \
		-v ${PWD}/sample:/code ${IMG} ${SECRET}

kill:
	docker rm -vf codesync
