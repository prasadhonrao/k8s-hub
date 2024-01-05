# Label the node
kubectl label node docker-desktop os=test --overwrite

# Remove label
kubectl label node docker-desktop os-

kubectl get nodes --show-labels

kubectl get pods