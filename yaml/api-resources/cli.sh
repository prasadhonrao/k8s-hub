# This script demonstrates various commands related to Kubernetes API resources.
# It includes commands to get all API resources, get API resources for a specific API group,
# get API resources with short names, explain the structure of a pod resource,
# create a pod using kubectl run, get pods, and make API requests using curl.

# Get all the api resources
kubectl api-resources

# Get all the apps api resources
kubectl api-resources --api-group=apps

# Get all the api resources with short names
kubectl api-resources --namespaced=true --verbs=list --sort-by=kind

# Explain pod resource
kubectl explain pod
kubectl explain pod.spec
kubectl explain pod.spec.containers
kubectl explain pod.spec.os

# Anatomy of API Request
kubectl run my-nginx-pod --image=nginx 
kubectl get pods
kubectl get pods -v 6
kubectl get pods --v=6
kubectl get pods -v 7
kubectl get pods -v 8

kubectl get pod my-nginx-pod -v 9

# Use curl to make api request
kubectl proxy &
curl https://localhost:8001/api/v1/namespaces/default/pods/my-nginx-pod 
fg
ctrl + c
