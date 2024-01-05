# Create the configmap and pod
kubectl apply -f .

# Verify that the configmap is created
kubectl get configmap

# Describe the configmap
kubectl describe configmap app-config-map

# Verify that the pod is running
kubectl get pods

# Forward the port to view the application in browser
kubectl port-forward env-viewer-pod-1 8080:3000
kubectl port-forward env-viewer-pod-2 8081:3000
