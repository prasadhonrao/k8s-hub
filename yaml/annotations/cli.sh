# Annotate a pod
kubectl annotate pod nginx-pod author=prasadhonrao 

kubectl describe pod nginx-pod | grep -i annotation

kubectl annotate pod nginx-pod author=prasadhonrao --overwrite

# Remove annotation
kubectl annotate pod nginx-pod author-

