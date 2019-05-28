#!/bin/bash

echo Creating kubernetes configmaps
kubectl create configmap logstash-config --from-file logstash/config/logstash.yml
kubectl create configmap pipeline-config --from-file logstash/pipeline/logstash.conf
echo Configmap creation complete
