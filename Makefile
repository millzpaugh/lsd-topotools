SHELL = /bin/bash

build:
	docker build \
		--tag lsd-topotools:latest .

buildnc:
	docker build \
		--no-cache \
		--tag lsd-topotools:latest .

bash:
	docker run \
		${ENV} \
		-it lsd-topotools:latest bash

run: build
	docker run \
		${ENV} \
		-it lsd-topotools:latest

		