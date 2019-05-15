#!/bin/bash

for APP_NAME in `cat parish-manager.yaml | grep -A3 Service | grep name | grep -v postgres | cut -d' ' -f 4`;
do
  echo Updating $APP_NAME
  LATEST=`kubectl describe deployment $APP_NAME | grep Image | grep latest`
  if [[ $LATEST == '' ]];
  then
    TAG=':latest'
  else
    TAG=''
  fi

  kubectl set image deployment/$APP_NAME $APP_NAME=servantcode/$APP_NAME$TAG
done
