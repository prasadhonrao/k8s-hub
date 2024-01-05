# -----------------------------Declarative-------------------------------------- #

# Create the pod along with empty dir volume
kubectl apply -f pod.yaml

# Get the pod details and ensure that the volume is created
kubectl get pod hostpath-example-linux

# ssh into the minikube cluster
minikube ssh

# Check the hostpath directory
ls /data/foo

# Exec into the pod
kubectl exec hostpath-example-linux -it -c nginx-container -- sh

# Check the foo directory inside the container
ls /foo

# Create a file inside the foo directory
echo "Hello from the container" > /foo/index.html

# Check the file created on the host
ls /data/foo

# Exit the container
exit

# Delete the pod
kubectl delete -f pod.yaml

# Check the hostpath directory. It should be still there.
ls /data/foo
