#!/bin/bash
kubectl create -f postgres-data.yaml
kubectl create -f parish-manager.yaml
kubectl create -f ingress.yaml
kubectl create -f sc-infrastructure.yaml
