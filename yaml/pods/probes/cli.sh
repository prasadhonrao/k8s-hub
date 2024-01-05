# -----------------------------Liveness Probe-------------------------------------- #

# Create the pod
kubectl apply -f liveness.yaml

# Get all pods
kubectl get pods

# Get all pods with more details
kubectl get pods -o wide

# Describe the pod
kubectl describe pod nginx-pod-liveness-probe

# Exec into the pod and remove index.html file from the container
kubectl exec nginx-pod-liveness-probe -- rm /usr/share/nginx/html/index.html

# Describe the pod and check the Events section for the error
kubectl describe pod nginx-pod-liveness-probe

# Delete the pod
kubectl delete -f liveness.yaml

# -----------------------------Readiness Probe-------------------------------------- #
# TODO

# -----------------------------Startup Probe-------------------------------------- #
# TODO