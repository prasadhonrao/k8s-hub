# Create serviceaccount using imperative format
kubectl create serviceaccount dashboard-admin
kubectl describe serviceaccount dashboard-admin

#  Get secret key
kubectl get secret
kubectl describe secret dashboard-admin-token-vzqj