# Get all pods
kubectl get pods

# Create an nginx pod
kubectl run nginx --image=nginx

# Find the user under which the pod is running
kubectl exec nginx -- whoami

# Delete the pod
kubectl delete pod nginx

# Create the pod using given yaml
kubectl create -f pod.yaml

# Check if pod is running
kubectl get pods

# Find the user under which the pod is running
kubectl exec nginx-pod -- whoami

# Delete the pod
kubectl delete -f pod.yaml

# Create the pod with SYS TIME capability
kubectl apply -f pod-sys-time.yaml

# Check if pod is running
kubectl get pods