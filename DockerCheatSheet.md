# Docker Cheatsheet

The following compose a cheatsheet for my commonly used docker commands:

## Build an image

`docker build -t container_name .`
(dot specifies location of dockerfile)

## Ran an ubuntu container with bash

`docker run -ti --rm ubuntu bash`

## Check container logs

`docker logs container_name`

## Stop docker container

`docker kill container_name`
(container_name or container_id)

## Remove docker container

`docker rm container_name`

## Validate docker-compose.yml and view generated file

`docker-compose config`

## See ports on running container

`docker port container_name`

## Create docker network

`docker network create example_network`

## Limit access to container to host only

`docker run -p 127.0.0.1:1234:1234/tcp container_name`

## Show docker images

`docker images`

## Remove docker image

`docker rmi image_name`
(image_name or tag)

## Map to volume on host/container

`docker run -v /path/to/volume:/path/to/volume/on/container container_name`

## Docker search for images 

`docker search image_name`

## Delete all images

`docker rm $(docker ps -a -q) -f; docker rmi $(docker images -q) -f`

## Delete all stopped containers and networks

`docker system prune`

## Sample run with env variables

`docker run -p 5000:5000 --restart=always --env Key=Value --env Key=Value -d --rm container_name`

## Docker connect to running container

`docker exec -it container_name /bin/bash`

## See docker stats

`docker stats`

## Rebuild docker-compose containers

`docker-compose build`
