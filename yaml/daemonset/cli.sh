# Create a daemonset using the specified configuration
kubectl apply -f daemonset.yaml

# Get the daemonset
kubectl get daemonset -o wide

# Get the pods
kubectl get pods --show-labels

# Describe the daemonset
kubectl describe daemonset nginx-daemonset

# Apply label to node
kubectl label node docker-desktop node-os=linux

# Find existing label
kubectl get nodes --show-labels

# Delete the label
kubectl label node docker-desktop node-os-

# Delete the daemonset
kubectl delete -f daemonset.yaml
