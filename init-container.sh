#!/bin/bash

CONTAINER="$1"
CONTAINER_TAG="${2:-latest}"
CONTAINER_NAME="dockerbin_$3"
CONTAINER_STRING="$CONTAINER:$CONTAINER_TAG"

RUNNING=$(docker inspect --format="{{ .State.Running }}" $CONTAINER_NAME 2> /dev/null)

if [ $? -eq 1 ]; then
  echo "$CONTAINER_NAME container does not exist... Creating $CONTAINER_NAME"
  docker run -d --name="$CONTAINER_NAME" "$CONTAINER_STRING" tail -f /dev/null
  RUNNING=$(docker inspect --format="{{ .State.Running }}" $CONTAINER_NAME 2> /dev/null)
fi

if [ "$RUNNING" == "false" ]; then
  echo "$CONTAINER_NAME container is not running... Starting $CONTAINER_NAME"
  docker start $CONTAINER_NAME
fi

