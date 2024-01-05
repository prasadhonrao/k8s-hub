# Create deployment
kubectl apply -f deployment.yaml

# Port forward
kubectl port-forward deployment/node-env-viewer-deployment 3000:3000

# Test
curl localhost:3000

# Clean up
kubectl delete -f deployment.yaml

# Another way to test it
kubectl exec -it <ENTER_POD_NAME> -- /bin/sh -c "printenv"