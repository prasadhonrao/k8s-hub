# -----------------------------Imperative-------------------------------------- #

# Create the deployment
kubectl create deployment nginx-deployment --image=nginx --replicas=2

# Get all deployments
kubectl get deployment

# Get all deployments with labels. Note that the label is automatically created
kubectl get deployment --show-labels

# Get all deployments with more details
kubectl get deployment -o wide

# Describe the deployment
kubectl describe deployment nginx-deployment

# Get all pods
kubectl get pods --show-labels

# Get all pods associated with the deployment
kubectl get pods -l app=nginx-deployment --show-labels

# Forward the deployment using port forward
kubectl port-forward deployment/nginx-deployment 8080:80

# Curl the deployment
curl localhost:8080

# Scale deployment
kubectl scale deployment nginx-deployment --replicas=5

# Delete the deployment
kubectl delete deployment nginx-deployment

# Save the deployment as yaml file
kubectl create deployment nginx-deployment --image=nginx:1.15.8 --replicas=2 --dry-run -o yaml > deployment2.yaml

# -----------------------------Declarative-------------------------------------- #

# Create deployment using declarative format
kubectl apply -f deployment.yaml --record

# Get all deployments
kubectl get deployment

# Describe the deployment
kubectl describe deployment nginx-deployment

# Get all deployments with labels
kubectl get deployment --show-labels

# Get the pods associated with the deployment
kubectl get pods -l app=nginx-app --show-labels

# Get update rollout status
kubectl rollout status deployment nginx-deployment

# Forward the deployment using port forward
kubectl port-forward deployment/nginx-deployment 8080:80

# Curl the deployment
curl localhost:8080

# Scale deployment
kubectl scale deployment nginx-deployment --replicas=5

# Ensure that the pods are scaled
kubectl get pods 

# Change image of a container in a deployment
kubectl set image deployment/nginx-deployment nginx-container=nginx:alpine --record

# Check the image of the container
kubectl describe deployment nginx-deployment | grep Image

# Get rollout history
kubectl rollout history deployment nginx-deployment

# Rollback deployment
kubectl rollout undo deployment nginx-deployment

# Validate undo operation by checking the image of the container
kubectl describe deployment nginx-deployment | grep Image

# Rollback to a specific revision
kubectl rollout undo deployment nginx-deployment --to-revision=2

# Validate rollback to specific version by checking the image of the container
kubectl describe deployment nginx-deployment | grep Image

# Restart deployment - will create a new replicaset and add new pods to it
kubectl rollout restart deployment nginx-deployment

# Auto scale deployment
kubectl autoscale -f nginx-deployment.yaml --min=2 --max=10 --cpu-percent=50

# Delete deployment
kubectl delete -f deployment.yaml