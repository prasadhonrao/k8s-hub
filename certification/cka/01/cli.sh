kubectl run admin-pod --image=busybox --command sleep 3200 --dry-run=client -o yaml > pod.yaml

kubectl apply -f pod.yaml