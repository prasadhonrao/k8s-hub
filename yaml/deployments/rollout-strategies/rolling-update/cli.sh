# Create the service for the deployment
kubectl apply -f service.yaml

# Get service ip and port
kubectl get service

# Create v1 deployment
kubectl apply -f v1.yaml --record 

# Get all deployments
kubectl get deployment

# Describe the deployment created above
kubectl describe deployment node-app-deployment

# Check rollout status
kubectl rollout status deployment node-app-deployment

# Check rollout history
kubectl rollout history deployment node-app-deployment

# Annotate deployment to override the default revision history message
kubectl annotate deployment node-app-deployment kubernetes.io/change-cause="v1 image"

# Check updated change cause
kubectl rollout history deployment node-app-deployment

# Create v2 deployment
kubectl apply -f v2.yaml --record

# Check rollout status
kubectl rollout status deployment node-app-deployment

# Check rollout history
kubectl rollout history deployment node-app-deployment

# Annotate deployment to override the default revision history message
kubectl annotate deployment node-app-deployment kubernetes.io/change-cause="v2 image"

# Check updated change cause
kubectl rollout history deployment node-app-deployment

# Check rollback
kubectl rollout undo deployment node-app-deployment

# Check rollout status
kubectl rollout status deployment node-app-deployment

# Check rollout history
kubectl rollout history deployment node-app-deployment

# Check rollout history with revision
kubectl rollout undo deployment node-app-deployment --to-revision=2

# Check rollout history
kubectl rollout history deployment node-app-deployment

# Delete deployment
kubectl delete deployment node-app-deployment
kubectl delete -f service.yaml
