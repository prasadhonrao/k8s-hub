# Validate the YAML file
kubectl apply -f pods.yaml 

# Show labels
kubectl get pods --show-labels

# Filter pods by labels
kubectl get pods -l release=v1 --show-labels

# Filter pods based on multiple labels. Note this is AND operation
kubectl get pods -l release=v1 -l env=prod --show-labels

# Filter pods based on multiple labels. Note this is AND operation
kubectl get pods -l release=v1,env=prod --show-labels

# Filter pods by labels
kubectl get pods -l 'release in (v1,v2)' --show-labels

# Filter pods by labels
kubectl get pods -l 'release notin (v2)' --show-labels 

# Display labels as additional columns
kubectl get pods -L env,release --show-labels

# Edit existing labels
kubectl label pod my-nginx-pod-v1 env=prod # This will fail as env label already exists
kubectl label pod my-nginx-pod-v1 env=prod --overwrite

# Add new labels
kubectl label pod my-nginx-pod-v1 app=nginx 

# Remove existing labels
kubectl label pod my-nginx-pod-v1 app-

# Perform bulk operation 
kubectl label pod --all tier=premium --overwrite

# Perform bulk delete operation based on label
kubectl delete pod -l tier=premium

# Delete labelled pods
kubectl delete -f pods.yaml

