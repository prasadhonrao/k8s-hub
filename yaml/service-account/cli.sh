# -----------------------------Imperative-------------------------------------- #

# Get all service accounts
kubectl get sa

# Create service account using imperative format
kubectl create sa dashboard-sa

# Create token for the service account
kubectl create token dashboard-sa

# TODO : Check how to tag the token to the service account as there are lots of changes in the recent K8s versions

# Get service account details
kubectl describe sa dashboard-sa

# Delete service account
kubectl delete sa dashboard-sa

# -----------------------------Declarative-------------------------------------- #

# Create a service account
kubectl apply -f service-account.yaml

# Get service account details
kubectl describe sa dashboard-sa

# Create a pod using service account
kubectl apply -f pod.yaml

# Get pod details
kubectl describe pod nginx-pod

# Delete pod
kubectl delete -f pod.yaml

# Delete service account
kubectl delete -f service-account.yaml

