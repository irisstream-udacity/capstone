#!/bin/bash

echo "---[Creating cluster infrastructure]---"
eksctl apply -f ./k8s/generated-cluster.yaml

echo "---[Creating deployment]---"
kubectl apply -f ./k8s/deployment.yaml

echo "---[Creating service]---"
kubectl apply -f ./k8s/service.yaml