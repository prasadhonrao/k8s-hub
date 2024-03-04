# Create the pod
kubectl apply -f pod.yaml

# Check that the pod is not initialized as its waiting for the init container to complete
kubectl get pods -w

# Monitor the events
kubectl get events --watch &

# Create the service
kubectl apply -f service.yaml

# Get the service
kubectl get service

# Delete the service
kubectl delete -f service.yaml

# Delete the pod
kubectl delete -f pod.yaml
