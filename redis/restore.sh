#!/bin/bash

VOLUME_NAME=${PWD##*/}_redisdb
BACKUP_PATH=$(pwd)/redis/data
DATA_PATH=/data
TMP_BACKUP_PATH=/backup

docker run --rm -it \
  -v $VOLUME_NAME:$DATA_PATH \
  -v $BACKUP_PATH:$TMP_BACKUP_PATH \
  busybox cp -a $TMP_BACKUP_PATH/. $DATA_PATH
