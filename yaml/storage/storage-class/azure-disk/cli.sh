# Get all the storage classes in the cluster
kubectl get sc

# Create storage class
kubectl apply -f storage-class.yaml

# Delete storage class
kubectl delete -f storage-class.yaml