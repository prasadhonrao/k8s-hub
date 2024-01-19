# -----------------------------Imperative-------------------------------------- #

# --from-literal creates the configmap with key=value pair
kubectl create configmap color-cm --from-literal=color=blue 

# Verify that the configmap is created
kubectl get configmap

# Describe the configmap
kubectl describe configmap color-cm

# Delete the configmap
kubectl delete configmap color-cm

# -----------------------------Declarative-------------------------------------- #
# Create the configmap
kubectl apply -f cm.yaml

# Verify that the configmap is created
kubectl get configmap

# Describe the configmap
kubectl describe configmap color-cm

# Create the pod and setup environment variables using config map
kubectl apply -f pod.yaml

# Verify that the pod is running
kubectl get pods

# Verify that the pod is using the configmap
kubectl describe pod webapp-color-pod

# Exec into the pod and view the environment variables
kubectl exec webapp-color-pod -it printenv

# Port forward
kubectl port-forward pod/webapp-color-pod 8080:8080

# Create a pod and specify color as red
kubectl run webapp-red-color-pod --image=prasadhonrao/webapp-color --env="color=red"

# Verify that the pod is running
kubectl get pods

# Forward the port
kubectl port-forward pod/webapp-red-color-pod 8080:8080

# Delete red pod
kubectl delete pod webapp-red-color-pod

# Create a pod with random color
kubectl run webapp-random-color-pod --image=prasadhonrao/webapp-color 

# Forward the port
kubectl port-forward pod/webapp-random-color-pod 8080:8080

# Delete red pod
kubectl delete pod webapp-random-color-pod

# Delete the pod
kubectl delete -f pod.yaml

# Delete the configmap
kubectl delete -f cm.yaml

