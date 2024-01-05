# NOTE: Make sure that Windows node in the cluster is in stopped state before running the script as nginx can be run only on Linux and node selector condition can not be set imperatively

# -----------------------------Imperative-------------------------------------- #
kubectl create deployment nginx-deployment --image=nginx --replicas=2 
kubectl expose deployment nginx-deployment --port=80 --type=LoadBalancer

# Check the endpoints of the service
kubectl get endpoints nginx-deployment

# Scale the deployment
kubectl scale deployment nginx-deployment --replicas=3

# Notice additional endpoints of the service
kubectl get endpoints nginx-deployment

SERVICE_IP=$(kubectl get services nginx-deployment -o go-template='{{(index .status.loadBalancer.ingress 0).ip}}')
echo $SERVICE_IP
curl http://$SERVICE_IP:80

kubectl delete service nginx-deployment
kubectl delete deployment nginx-deployment

# -----------------------------Declarative-------------------------------------- #

# Create the deployment
kubectl apply -f deployment.yaml

# Ensure that deployment and pods are created successfully
kubectl get deployments
kubectl get pods

# Create the service
kubectl apply -f service.yaml

# Ensure that service is created successfully
kubectl get services

# Get the external IP of the service
kubectl get services nginx-load-balancer-service

# Get the service IP
SERVICE_IP=$(kubectl get services nginx-load-balancer-service -o go-template='{{(index .status.loadBalancer.ingress 0).ip}}')
echo $SERVICE_IP

# Access the service
curl http://$SERVICE_IP:80
curl https://$SERVICE_IP:443

# Delete the deployment and service
kubectl delete -f deployment.yaml
kubectl delete -f service.yaml
