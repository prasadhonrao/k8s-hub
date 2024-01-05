#!/bin/bash

# Create the service for the deployment
kubectl apply -f service.yaml

# Ensure the service is created
kubectl get services

# Create stable deployment
kubectl apply -f stable-deployment.yaml --record

# Get all deployments
kubectl get deployment

# Get load balancer service ip and port and store the output in a variable
service_ip=$(kubectl get service node-app-service | grep node-app-service | awk '{print $4}')
echo $service_ip

# curl the service
curl http://$service_ip:8080

# Access service endpoint in a loop
while true; do
    curl -s http://$service_ip:8080
    sleep 1
done

# Create canary deployment
kubectl apply -f canary-deployment.yaml --record

# Get all deployments
kubectl get deployment

# curl the service
curl http://$service_ip:8080

# Delete the deployments
kubectl delete -f stable-deployment.yaml
kubectl delete -f canary-deployment.yaml
kubectl delete -f service.yaml
