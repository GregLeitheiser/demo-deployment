#!/bin/bash

echo Creating configmaps
kubectl create configmap logstash-config --from-file logstash/config/logstash.yml
kubectl create configmap pipeline-config --from-file logstash/pipeline/logstash.conf

kubectl create configmap app-config --from-file config/env.js
echo Configmap creation complete

