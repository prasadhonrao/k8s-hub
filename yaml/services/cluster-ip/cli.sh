# -----------------------------Imperative-------------------------------------- #

# Create a pod
kubectl run nginx --image=nginx --restart=Never --port=80

# Expose a pod as ClusterIP service
kubectl expose pod nginx --name nginx-cluster-ip-service --port 8080 --target-port 80 --type ClusterIP

# Delete the pod
kubectl delete pod nginx

# Create the pod and ClusterIP service at the same time
# TODO: This is not working
kubectl run nginx --image=nginx --restart=Never --port=80 --expose

# -----------------------------Declarative-------------------------------------- #

# Create the service and deployment
kubectl apply -f .

# Ensure that both service, deployment and pods are created
kubectl get services -o wide
kubectl get deployments
kubectl get pods 

# Exec into the pod and curl the service
kubectl exec -it nginx-deployment-b54466947-lsnlf -- curl nginx-cluster-ip-service:8080

# Delete the service and deployment
kubectl delete -f .
