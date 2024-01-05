# Create v1 deployment
kubectl apply -f node-app-v1-deployment.yaml --record 

kubectl get deployment
kubectl describe deployment node-app-deployment

# Check rollout status
kubectl rollout status deployment node-app-deployment

# Check rollout history
kubectl rollout history deployment node-app-deployment

# Annotate deployment
kubectl annotate deployment node-app-deployment kubernetes.io/change-cause="v1 image"

# Delete all annotations
kubectl annotate deployment node-app-deployment deployment.kubernetes.io/revision-

# Check rollout history with revision
kubectl rollout history deployment node-app-deployment --revision=1

# Create v2 deployment
kubectl apply -f node-app-v2-deployment.yaml --record

# Check rollout status
kubectl rollout status deployment node-app-deployment

# Check rollout history
kubectl rollout history deployment node-app-deployment

# Check rollout history with revision
kubectl rollout history deployment node-app-deployment --revision=2

# Check rollback
kubectl rollout undo deployment node-app-deployment

# Check rollout status
kubectl rollout status deployment node-app-deployment

# Check rollout history
kubectl rollout history deployment node-app-deployment

# Check rollout history with revision
kubectl rollout history deployment node-app-deployment --revision=3

# Delete deployment
kubectl delete deployment node-app-deployment
kubectl delete -f node-app-service.yaml