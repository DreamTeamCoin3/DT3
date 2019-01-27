#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-dreamteam3pay/dreamteam3d-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/dreamteam3d docker/bin/
cp $BUILD_DIR/src/dreamteam3-cli docker/bin/
cp $BUILD_DIR/src/dreamteam3-tx docker/bin/
strip docker/bin/dreamteam3d
strip docker/bin/dreamteam3-cli
strip docker/bin/dreamteam3-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
