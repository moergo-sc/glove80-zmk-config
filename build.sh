#!/bin/bash

IMAGE=glove80

set -e -x

docker build -t "$IMAGE" .
docker run --rm -v "$PWD:$PWD" -w "$PWD" -e UID="$(id -u)" -e GID="$(id -g)" "$IMAGE"
