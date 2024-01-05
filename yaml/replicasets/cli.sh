# -----------------------------Imperative-------------------------------------- #
# Kubernetes does not allow to create replicaset imperatively. Instead we create the replicaset using deployment.


# -----------------------------Declarative-------------------------------------- #
# Create replicaset using declarative format
kubectl create -f nginx-replicaset.yaml --save-config
kubectl apply -f nginx-replicaset.yaml
kubectl replace -f nginx-replicaset.yaml # ( replace the replicaset with the new one )
kubectl delete -f nginx-replicaset.yaml

# Get replicaset details
kubectl get replicaset my-nginx-replicaset
kubectl describe replicaset my-nginx-replicaset
kubectl edit replicaset my-nginx-replicaset
kubectl delete replicaset my-nginx-replicaset
kubectl scale replicaset my-nginx-replicaset --replicas=3