
# Annotate a pod with the author metadata
kubectl annotate pod nginx-pod author=prasadhonrao

# Display the annotations of the nginx-pod
kubectl describe pod nginx-pod | grep -i annotation

# Update the author annotation of the nginx-pod
kubectl annotate pod nginx-pod author=prasadhonrao --overwrite

# Remove the author annotation from the nginx-pod
kubectl annotate pod nginx-pod author-
