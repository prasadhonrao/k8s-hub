# Run the prod service which is pointing to blue deployment to start with and then switch to green deployment
kubectl apply -f prod-service.yaml

# Ensure prod service is created
kubectl get services

# Get service ip and port of prod service
prod_service_ip=$(kubectl get service node-app-prod-service | grep node-app-prod-service | awk '{print $4}')
echo $prod_service_ip

# curl the prod service and notice that its not accessible
curl http://$prod_service_ip:8080

# Access prod service endpoint in a loop and notice that its accessible
while true; do
    curl -s http://$prod_service_ip:8080
    sleep 1
done

# OPEN NEW SHELL
# Create blue deployment and service
kubectl apply -f blue-deployment.yaml --record
kubectl apply -f blue-service.yaml

# Ensure both the services are created
kubectl get services

# Get service ip and port of blue service
blue_service_ip=$(kubectl get service node-app-blue-service | grep node-app-blue-service | awk '{print $4}')
echo $blue_service_ip

# curl the blue service and notice that its accessible
curl http://$blue_service_ip:9001

# OPEN NEW SHELL
# Create green deployment and service
kubectl apply -f green-deployment.yaml --record
kubectl apply -f green-service.yaml

# Get service ip and port of green service
green_service_ip=$(kubectl get service node-app-green-service | grep node-app-green-service | awk '{print $4}')
echo $green_service_ip

# curl the blue service and notice that its accessible
curl http://$green_service_ip:9002

# Now switch the prod service to point to green deployment
kubectl apply -f prod-service.yaml --record

# Delete blue deployment and service
kubectl delete -f blue-deployment.yaml
kubectl delete -f blue-service.yaml

# Delete green deployment and service
kubectl delete -f green-deployment.yaml
kubectl delete -f green-service.yaml

# Delete prod service
kubectl delete -f prod-service.yaml
