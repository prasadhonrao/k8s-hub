node=aks-lpool-22778402-vmss00000i

# Get all the nodes in the cluster with their labels
kubectl get nodes --show-labels

# Label the node
kubectl label node $node os=myos --overwrite

# Check the label on the node
kubectl describe node $node | grep -i os

# Create a pod with nodeSelector
kubectl apply -f pod.yaml

# Get all the pods
kubectl get pods -o wide

# Clean up the resources
kubectl delete -f pod.yaml

# Remove label
kubectl label node $node os-

# Verify the label is removed
kubectl get nodes --show-labels

# Verify there are not running pods
kubectl get pods