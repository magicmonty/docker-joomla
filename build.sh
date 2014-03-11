#!/bin/bash
docker build -t data-store data-store && \
	docker build -t site-db site-db && \
	docker build -t web-machine web-machine

REPOS=$(docker ps -notrunc -a -q)
echo Removing
echo $REPOS
echo ---

docker rm `docker ps -notrunc -a -q` > /dev/null 2>&1
docker ps -a
