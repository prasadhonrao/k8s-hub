linuxnode=aks-lpool-22778402-vmss00000u

# Create a pod manifest file
kubectl run nginx-pod --image=nginx --dry-run=client -o yaml > pod.yaml

# ssh into the node
ssh $linuxnode

# Find the staticPodPath
cat /var/lib/kubelet/config.yaml | grep staticPodPath

# Copy the pod manifest file to the staticPodPath
sudo cp pod.yaml /etc/kubernetes/manifests/

# Ensure file is copied
ls -l /etc/kubernetes/manifests/

# Exit the node
exit

# Get all pods
kubectl get pods -w

# Get all pods with more details
kubectl get pods -o wide

# Try to delete the pod
kubectl delete pod nginx-pod

# Get all pods and check the pod is still there
kubectl get pods

# ssh into the node
ssh $linuxnode

# Delete the pod manifest file from the staticPodPath
sudo rm /etc/kubernetes/manifests/pod.yaml

# Ensure file is deleted
ls -l /etc/kubernetes/manifests/

# Exit the node
exit

# Get all pods and check the pod is deleted
kubectl get pods
