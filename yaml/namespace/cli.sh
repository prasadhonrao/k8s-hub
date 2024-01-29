# -----------------------------Imperative-------------------------------------- #
# Get all namespaces
kubectl get namespaces

# Get all the pods in default name
kubectl get pods

# Create a namespace using imperative format
kubectl create namespace dev-namespace

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