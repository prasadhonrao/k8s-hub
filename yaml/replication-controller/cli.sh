# NOTE: Replication Controller is older way of creating objects and should not be used anymore. Instead deployment should be used.

# -----------------------------Imperative-------------------------------------- #
# Kubernetes does not allow to create replication controller imperatively. Instead we create the replicaset using deployment.

# -----------------------------Declarative-------------------------------------- #
kubectl apply -f rc.yaml
kubectl get rc
kubectl describe rc nginx-rc
kubectl get pods
kubectl port-forward nginx-rc-t246t 8080:80

kubectl delete -f rc.yaml

# Get replicationcontroller details
kubectl get replicationcontroller nginx-rc
kubectl describe replicationcontroller nginx-rc
kubectl edit replicationcontroller nginx-rc
kubectl delete replicationcontroller nginx-rc
kubectl scale replicationcontroller nginx-rc --replicas=3