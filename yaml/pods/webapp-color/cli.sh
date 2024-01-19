# -----------------------------Declarative-------------------------------------- #
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

# Delete the pod
kubectl delete -f pod.yaml


