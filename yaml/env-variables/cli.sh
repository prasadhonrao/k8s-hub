# Create deployment
kubectl apply -f deployment.yaml

# Get pods
kubectl get pods

# Port forward
kubectl port-forward deployment/node-env-viewer-deployment 8080:3000

# Test
curl localhost:3000

# Clean up
kubectl delete -f deployment.yaml

# Another way to test it
kubectl exec -it <ENTER_POD_NAME> -- /bin/sh -c "printenv"