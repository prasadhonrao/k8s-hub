# Get all the contexts
kubectl config get-contexts

# Set current context to docker-desktop
kubectl config use-context docker-desktop

# Delete existing context
kubectl config delete-context ktb-aks

# Get cluster info
kubectl cluster-info

# Get all the api resources
kubectl api-resources

# Get all the api resources with short names
kubectl api-resources --namespaced=true --verbs=list --sort-by=kind

# Explain pod resource
kubectl explain pod
kubectl explain pod.spec
kubectl explain pod.spec.containers
kubectl explain pod.spec.os
