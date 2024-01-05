# Get all nodes
kubectl get nodes -o wide

linuxnode="aks-lpool-11224387-vmss000000"

# Create a debug pod to debug the linux node
kubectl debug node/$linuxnode -it --image=mcr.microsoft.com/dotnet/runtime-deps:6.0 

# Delete the debug pod
kubectl delete pod node-debugger-aks-lpool-11224387-vmss000000-k7w8k

