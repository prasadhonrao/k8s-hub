# -----------------------------Declarative-------------------------------------- #
# Create a PV
kubectl apply -f nginx-pv.yaml
kubectl get pv # Note that PV status is Available and No PVC has claimed it yet (CLAIM column)

# Create a PVC
kubectl apply -f nginx-pvc.yaml
kubectl get pvc

# Check the PV status is now bound
kubectl get pv

# Create a Pod
kubectl apply -f nginx-pod.yaml
kubectl port-forward nginx-pv-pvc-pod 8080:80

# Clear all the resources
kubectl delete -f nginx-pod.yaml
kubectl delete -f nginx-pvc.yaml
kubectl delete -f nginx-pv.yaml