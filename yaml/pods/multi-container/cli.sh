# -----------------------------Imperative-------------------------------------- #

# TODO


# -----------------------------Declarative-------------------------------------- #

# Create the pod using declarative format
kubectl create -f pod.yaml

# Delete the pod
kubectl delete -f pod.yaml

# Get all pods and confirm deletion
kubectl get pods