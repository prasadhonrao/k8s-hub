# -----------------------------Imperative-------------------------------------- #
# Get all namespaces
kubectl get namespaces

# Find out which api resources are namespaced 
kubectl api-resources --namespaced=true

# Describe all namespaces
kubectl describe namespaces

# Describe a namespace
kubectl describe namespace default

# Get all the pods in default name
kubectl get pods

# Create a namespace using imperative format
kubectl create namespace dev-namespace

# Create a namespace with Capital letters
kubectl create namespace Dev-namespace

# Set default namespace
kubectl config set-context --current --namespace=dev-namespace

# Get pods across all namespaces
kubectl get pods --all-namespaces
kubectl get pods -A

# Get all the pods in dev namespace
kubectl get pods --namespace=dev-namespace

# Delete a namespace
kubectl delete namespace dev-namespace

# -----------------------------Declarative-------------------------------------- #

# Create a namespace using declarative format
kubectl apply -f dev-ns.yaml

# Create a pod with namespace
kubectl apply -f nginx-pod-dev-ns.yaml

# Get all the pods in dev namespace
kubectl get pods --namespace=dev-namespace

# Delete a namespace
kubectl delete -f dev-ns.yaml

# Get all namespaces
kubectl get namespaces