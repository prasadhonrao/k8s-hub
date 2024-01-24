noScheduleNode=aks-lpool-22778402-vmss00000i
noExecuteNode=aks-lpool-22778402-vmss00000k

# Get all the pods
kubectl get pods -o wide

# Get all the nodes in the cluster 
kubectl get nodes -o wide

# Taint a node
kubectl taint nodes $noScheduleNode hardware=high-performance:NoSchedule

# Check the status of the node and taint information    
kubectl describe node $noScheduleNode

# Create the pod without toleration
kubectl run nginx --image=nginx

# Get all the pods
kubectl get pods -o wide

# Create the pod with toleration
kubectl apply -f deployment.yaml

# Get all the pods
kubectl get pods -o wide

# Taint a node and evict the pods from that node
kubectl taint nodes noExecuteNode hardware=high-performance:NoExecute

# Get all the pods and check the pod is now running on a different node due to NoExecute taint
kubectl get pods -o wide

# Clean up the resources
kubectl delete -f deployment.yaml
kubectl delete pod nginx

# Remove the taint
kubectl taint nodes $noScheduleNode hardware=high-performance:NoSchedule-
kubectl taint nodes $noExecuteNode hardware=high-performance:NoExecute-

