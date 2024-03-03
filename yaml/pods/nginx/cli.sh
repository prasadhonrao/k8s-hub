# -----------------------------Imperative-------------------------------------- #

# Create the pod
kubectl run nginx-pod --image=nginx

# Get all pods
kubectl get pods

# Get all pods with more details
kubectl get pods -o wide

# Describe the pod
kubectl describe pod nginx-pod

# Port forward
kubectl port-forward nginx-pod 8080:80

# Curl the pod
curl localhost:8080

# Delete the pod
kubectl delete pod nginx-pod

# Generate the YAML file
kubectl run nginx-pod --image=nginx --dry-run=client -o yaml > pod2.yaml

# Delete the generated YAML file
rm pod2.yaml

# -----------------------------Declarative-------------------------------------- #

# Validate the YAML file
kubectl apply -f pod.yaml --dry-run=client --validate=true
kubectl apply -f pod.yaml --dry-run=server --validate=true

# Create the pod using declarative format
kubectl create -f pod.yaml --save-config

# Get pod details and check annotations
kubectl get pod nginx-pod -o yaml

# Describe the pod and get details about events
kubectl describe pod nginx-pod

# Another way to create the pod using apply
kubectl apply -f pod.yaml

# Exec into the pod and run built-in commands
kubectl exec nginx-pod -it -- sh
kubectl exec nginx-pod -- whoami

# Edit existing pod
kubectl edit -f pod.yaml

# Access the pod using port forward
kubectl port-forward nginx-pod 8080:80

# Access the pod using service
curl localhost:8080

# Delete the pod
kubectl delete -f pod.yaml

# Get all pods and confirm deletion
kubectl get pods