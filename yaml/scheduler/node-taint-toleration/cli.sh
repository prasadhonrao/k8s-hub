# Get all the pods
kubectl get pods -o wide

# Get all the nodes in the cluster 
kubectl get nodes -o wide

# Taint a node
kubectl taint nodes aks-lpool-11224387-vmss000000 hardware=high-performance:NoSchedule

# Check the status of the node and taint information    
kubectl describe node aks-lpool-11224387-vmss000000

# Create the pod with toleration
kubectl apply -f deployment.yaml

# Get all the pods
kubectl get pods -o wide

# Clean up the resources
kubectl delete -f deployment.yaml

# Remove the taint
kubectl taint nodes aks-lpool-11224387-vmss000000 hardware=high-performance:NoSchedule-