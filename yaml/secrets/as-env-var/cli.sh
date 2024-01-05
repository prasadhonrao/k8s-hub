# -----------------------------Imperative-------------------------------------- #

# Create secret imperatively using literals. Note that the secret is not encrypted.
kubectl create secret generic secret-1 \
    --from-literal=HOST=mysql \
    --from-literal=USER=root \
    --from-literal=PASSWORD=password

# Verify that the secret was created
kubectl get secret

# Verify the contents of the secret
kubectl describe secret secret-1

# Get the contents of the secret-1
kubectl get secret secret-1 --template={{.data.HOST}} 
kubectl get secret secret-1 --template={{.data.HOST}} | base64 --decode
kubectl get secret secret-1 --template={{.data.USER}} 
kubectl get secret secret-1 --template={{.data.USER}} | base64 --decode
kubectl get secret secret-1 --template={{.data.PASSWORD}} 
kubectl get secret secret-1 --template={{.data.PASSWORD}} | base64 --decode

# Delete the secret
kubectl delete secret secret-1

# Create a secret using a file.
kubectl create secret generic secret-2 \
    --from-file=./db-credentials.txt

# Get the contents of the secret-2
kubectl describe secret secret-2

# Decode the contents of the secret-2
kubectl get secret secret-2 -o jsonpath='{.data.db-credentials\.txt}' | base64 --decode

# Decode the contents of the secret-2 using a template
echo "bXlzcWw=" | base64 --decode

# Delete the secret
kubectl delete secret secret-2

# -----------------------------Declarative-------------------------------------- #

# Create secret declaratively
kubectl apply -f secret.yaml

# Verify that the secret was created
kubectl get secret

# Verify the contents of the secret
kubectl describe secret db-secret

# Create a pod that uses the specified secret
kubectl apply -f pod.yaml

# Verify that the pod is running
kubectl get pods

# Verify that the pod is using the secret
kubectl describe pod secret-env-viewer-pod

# Exec into the pod and view the secret set using environment variables
kubectl exec secret-env-viewer-pod -it sh

# View the environment variables
printenv

# Exit the container
exit

# Delete the pod
kubectl delete -f pod.yaml

# Delete the secret
kubectl delete -f secret.yaml
