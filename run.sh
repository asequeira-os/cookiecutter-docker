#!/usr/bin/env bash
docker-compose --project-directory . -f docker/docker-compose.yml build cookiecutter

echo "home dir will be mounted at /hdir"
docker-compose --project-directory . -f docker/docker-compose.yml run \
		--rm \
		-v ${HOME}:/hdir \
		--name=cookiecutter \
		cookiecutter \
		bash

docker-compose  --project-directory . -f docker/docker-compose.yml down

