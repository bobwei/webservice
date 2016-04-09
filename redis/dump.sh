#!/bin/bash

REDIS_CONTAINER_NAME=${PWD##*/}_redis_1
BACKUP_PATH=$(pwd)/redis/data

docker run --rm --volumes-from $REDIS_CONTAINER_NAME -v $BACKUP_PATH:/backup \
  busybox cp -a /data/. /backup
