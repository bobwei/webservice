#!/bin/bash

VOLUME_NAME=${PWD##*/}_jenkinsdb
BACKUP_PATH=$(pwd)/jenkins/data
DATA_PATH=/var/jenkins_home
TMP_BACKUP_PATH=/backup

docker run --rm -it \
  -v $VOLUME_NAME:$DATA_PATH \
  -v $BACKUP_PATH:$TMP_BACKUP_PATH \
  busybox cp -a $DATA_PATH/. $TMP_BACKUP_PATH
