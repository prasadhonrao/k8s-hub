# -----------------------------Imperative-------------------------------------- #

# Create the pod
kubectl run nginx-custom-html-pod --image=prasadhonrao/nginx-custom-html

# Get all pods
kubectl get pods

# Get all pods with more details
kubectl get pods -o wide

# Describe the pod
kubectl describe pod nginx-custom-html-pod

# Port forward
kubectl port-forward nginx-custom-html-pod 8080:80

# Curl the pod
curl localhost:8080

# Delete the pod
kubectl delete pod nginx-custom-html-pod

# -----------------------------Declarative-------------------------------------- #

# Validate the YAML file
kubectl apply -f pod.yaml --dry-run=client --validate=true
kubectl apply -f pod.yaml --dry-run=server --validate=true

# Another way to create the pod using apply
kubectl apply -f pod.yaml

# Exec into the pod and run built-in commands
kubectl exec nginx-custom-html-pod -it -- sh
kubectl exec nginx-custom-html-pod -- whoami

# Edit existing pod
kubectl edit -f pod.yaml

# Access the pod using port forward
kubectl port-forward nginx-custom-html-pod 8080:80

# Delete the pod
kubectl delete -f pod.yaml

# Get all pods and confirm deletion
kubectl get pods