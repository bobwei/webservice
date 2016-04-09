#!/bin/bash

VOLUME_NAME=${PWD##*/}_redisdb
BACKUP_PATH=$(pwd)/redis/data

docker run --rm -it \
  -v $VOLUME_NAME:/data \
  -v $BACKUP_PATH:/backup \
  busybox cp -a /data/. /backup
