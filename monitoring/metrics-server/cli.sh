# Get metrics server YAML

git clone https://github.com/kubernetes-sigs/metrics-server.git
cd metrics-server/deploy/kubernetes

# Deploy metrics server

kubectl apply -f .

# Check metrics server

kubectl get deployment metrics-server -n kube-system

# Check CPU and memory usage for nodes

kubectl top nodes

# Check CPU and memory usage for pods

kubectl top pods

# Check CPU and memory usage for pods in all namespaces

kubectl top pods --all-namespaces



