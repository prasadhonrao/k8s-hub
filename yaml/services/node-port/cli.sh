# NOTE: Make sure that NSG rules are configured to allow traffic on ports 31000 and 80

# -----------------------------Declarative-------------------------------------- #

# Create the service and deployment
kubectl apply -f .

# Ensure that both service, deployment and pods are created
kubectl get services -o wide
kubectl get deployments
kubectl get pods

# Get the external IP of the nodes
kubectl get nodes -o wide

# If node contains public IP, use it to curl the service OR use the public IP of the load balancer in next step
NODE_PUBLIC_IP=$(kubectl get nodes -o go-template='{{(index .items 0).status.addresses[?(@.type=="ExternalIP")].address}}')
echo $NODE_PUBLIC_IP

# Curl the service
curl $NODE_PUBLIC_IP:31000

# Get the External IP of the load balancer service and store it in a variable
LOAD_BALANCER_IP=$(kubectl get services nginx-load-balancer-service -o go-template='{{(index .status.loadBalancer.ingress 0).ip}}')
echo $LOAD_BALANCER_IP

# Curl the service
curl $LOAD_BALANCER_IP:31000

# Delete the service and deployment
kubectl delete -f .
