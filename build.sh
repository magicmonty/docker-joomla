#!/bin/bash
docker build -t data-store data-store/Dockerfile && \
	docker build -t site-db site-db/Dockerfile && \
	docker build -t web-machine web-machine/Dockerfile

docker rm `docker ps -notrunc -a -q`
