# Get all the namespaces
kubectl get namespaces

# Create Dev namespace
kubectl apply -f dev-namespace.yaml

# Create Resource Quota for Dev namespace
kubectl apply -f resource-quota-dev-ns.yaml

# Get Resource Quota for Dev namespace
kubectl get resourcequota -n dev-namespace

# Create deployment with 3 replicas
kubectl apply -f deployment.yaml

# Get the deployment in dev namespace
kubectl get deployment -n dev-namespace

# Describe the deployment in dev namespace
kubectl describe deployment -n dev-namespace

# Get all the pods in dev namespace
kubectl get pods -n dev-namespace

# Create an additional pod in dev namespace and see the error
kubectl run nginx-pod-dev-ns --image=nginx:alpine -n dev-namespace
