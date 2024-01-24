# -----------------------------Declarative-------------------------------------- #

# Create the pod using declarative format
kubectl apply -f pod.yaml

# Get all pods and confirm creation
kubectl get pods

# Forward port 80 to 8080
kubectl port-forward sidecar-pattern-pod 8080:80

# Open a new terminal and run the following command to see the logs
kubectl exec -it sidecar-pattern-pod -c consumer -- sh

# Delete the pod
kubectl delete -f pod.yaml

