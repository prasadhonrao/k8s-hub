# Create dev namespace
kubectl create -f namespace-dev.yaml

# Check if namespace created successfully
kubectl get ns

# Get existing limit ranges in dev namespace
kubectl get limitrange -n dev

# Create limit range
kubectl create -f limit-range.yaml

# Get limit range details
kubectl describe limitrange limit-range-dev -n dev

# Create the pod in dev namespace
kubectl create -f pod.yaml -n dev

# Get pod details and check the CPU and memory limits
kubectl describe pod nginx-pod -n dev

# Delete pod
kubectl delete -f pod.yaml -n dev

# Delete limit range
kubectl delete -f limit-range.yaml

# Delete dev namespace
kubectl delete -f namespace-dev.yaml