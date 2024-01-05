# -----------------------------Imperative-------------------------------------- #

# --from-literal creates the configmap with key=value pair
kubectl create configmap app-settings-cm-1 \
        --from-literal=color=blue \
        --from-literal=author="prasad honrao" \
        --from-literal=country.state="India.MH"

# --from-file creates the configmap with filename as the key and file contents as the value
kubectl create configmap app-settings-cm-2 \
        --from-file=appconfig

# --from-env-file creates the configmap with each line in the file as key=value pair
kubectl create configmap app-settings-cm-3 \
        --from-env-file=appconfig

# Verify that the configmap is created
kubectl get configmap

# Describe the configmap
kubectl describe configmap app-settings-cm-1
kubectl describe configmap app-settings-cm-2
kubectl describe configmap app-settings-cm-3

# Delete the configmap
kubectl delete configmap app-settings-cm-1
kubectl delete configmap app-settings-cm-2
kubectl delete configmap app-settings-cm-3

# -----------------------------Declarative-------------------------------------- #
# Create the configmap
kubectl apply -f cm.yaml

# Verify that the configmap is created
kubectl get configmap

# Describe the configmap
kubectl describe configmap app-config-map

# Create the pod and setup environment variables using config map
kubectl apply -f pod.yaml

# Verify that the pod is running
kubectl get pods

# Verify that the pod is using the configmap
kubectl describe pod nginx-configmap-pod

# Exec into the pod and view the environment variables
kubectl exec nginx-configmap-pod -it sh

# Print the environment variables
printenv

# Exit the pod
exit

# Delete the pod
kubectl delete -f pod.yaml

# Delete the configmap
kubectl delete -f cm.yaml

