# -----------------------------Declarative-------------------------------------- #

# Create the pod along with empty dir volume
kubectl apply -f pod.yaml

# Get the pod details and ensure that the volume is created
kubectl get pod nginx-empty-dir-volume-pod -o yaml

# Forward the traffic to the pod
kubectl port-forward nginx-empty-dir-volume-pod 8080:80

# Exec into the html-updater container to check if html file is updated
kubectl exec nginx-empty-dir-volume-pod -c html-updater -it -- sh

# Cat the file
cat html/index.html

# Exit the container
exit

# Exec into the nginx container to check if html file is updated
kubectl exec nginx-empty-dir-volume-pod -c nginx -it -- sh

# Cat the file
cat /usr/share/nginx/html/index.html

# Exit the container
exit

# Delete the pod
kubectl delete -f pod.yaml