# -----------------------------Imperative-------------------------------------- #

# Create the pod
kubectl run redis-pod --image=redis

# Get all pods
kubectl get pods

# Get all pods with more details
kubectl get pods -o wide

# Describe the pod
kubectl describe pod redis-pod

# Port forward
kubectl port-forward redis-pod 6379:6379

# Access redis using redis-cli
rdcli 

# Set key-value pair
set name "Hello Kubernetes"

# Get key-value pair
get name

# Delete the pod
kubectl delete pod redis-pod

# -----------------------------Declarative-------------------------------------- #

# Create the pod using declarative format
kubectl apply -f pod.yaml 

# Get pods 
kubectl get pods 

# Access the pod using port forward
kubectl port-forward redis-pod 6379:6379

# Access redis using redis-cli
rdcli 

# Set key-value pair
set name "Hello Kubernetes"

# Get key-value pair
get name

# Delete the pod
kubectl delete -f pod.yaml

# Get all pods and confirm deletion
kubectl get pods
