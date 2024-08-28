# Create db deployment
kubectl apply -f db-deployment.yaml

# Check db deployment
kubectl get deployments

# Create db nodeport service
kubectl apply -f db-nodeport-service.yaml

# Check db nodeport service
kubectl get services

# Create load balancer service
kubectl apply -f db-lb-service.yaml

# Check load balancer service
kubectl get services -o wide

# Create app deployment
kubectl apply -f app-deployment.yaml

# Create app nodeport service
kubectl apply -f app-nodeport-service.yaml

# Create load balancer service
kubectl apply -f app-lb-service.yaml

curl http://192.168.49.2:32605


kubectl delete -f .