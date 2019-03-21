#!/bin/bash

APP_NAME=$1

echo Updating $APP_NAME
LATEST=`kubectl describe deployment $APP_NAME | grep Image | grep latest`
if [[ $LATEST == '' ]];
then
  TAG=':latest'
else
  TAG=''
fi

kubectl set image deployment/$APP_NAME $APP_NAME=servantcode/$APP_NAME$TAG
