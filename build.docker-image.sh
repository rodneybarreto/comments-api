#!/usr/bin/env sh

## Generate docker image
docker build . -t rodneybarreto/minipets_comments-api:1.0.0

## Push to docker hub
#docker push rodneybarreto/minipets_comments-api:1.0.0

## Run container
#docker run --name comments-api --network=host -p 8083:8083 rodneybarreto/minipets_comments-api:1.0.0