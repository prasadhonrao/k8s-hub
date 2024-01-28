# This script is used to interact with Kubernetes contexts and retrieve information about the cluster.

# Get all the contexts
kubectl config get-contexts

# Set the current context to docker-desktop
kubectl config use-context docker-desktop

# Delete the existing context named "ktb-aks"
kubectl config delete-context ktb-aks

# Get cluster information
kubectl cluster-info

# Get all the API resources available in the cluster
kubectl api-resources

# Get all the API resources with short names, limited to the current namespace, and sorted by kind
kubectl api-resources --namespaced=true --verbs=list --sort-by=kind

# Explain the structure and fields of a pod resource
kubectl explain pod
kubectl explain pod.spec
kubectl explain pod.spec.containers
kubectl explain pod.spec.os
