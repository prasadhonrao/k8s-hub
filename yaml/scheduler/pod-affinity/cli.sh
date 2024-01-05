# Create frontend pod
kubectl apply -f frontend-pod.yaml

# Create backend pod
kubectl apply -f backend-pod.yaml

# Create frontend deployment
kubectl apply -f frontend-deployment.yaml

# Check frontend pod placement
kubectl get pods -o wide --show-labels 

# Create backend deployment
kubectl apply -f backend-deployment.yaml

# Check backend pod placement
kubectl get pods -o wide --show-labels

# Clean all the resources
kubectl delete -f frontend-pod.yaml
kubectl delete -f backend-pod.yaml
kubectl delete -f frontend-deployment.yaml
kubectl delete -f backend-deployment.yaml
