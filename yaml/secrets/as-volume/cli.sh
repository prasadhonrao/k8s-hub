# Create secret declaratively
kubectl apply -f secret.yaml

# Verify that the secret was created
kubectl get secret

# Verify the contents of the secret
kubectl describe secret db-credentials

# Create a pod that uses the specified secret
kubectl apply -f pod.yaml

# Verify that the pod is running
kubectl get pods

# Verify that the pod is using the secret
kubectl describe pod nginx-secret-pod

# Exec into the pod and view the secret set using environment variables
kubectl exec nginx-secret-pod -it sh

# Get secrete set as environment variables
printenv 

# Get the secrets from volume mount
cat /etc/secrets/db-credentials/password
cat /etc/secrets/db-credentials/username

exit

# Delete the pod
kubectl delete -f pod.yaml

# Delete the secret
kubectl delete -f secret.yaml

