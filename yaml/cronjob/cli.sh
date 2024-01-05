# Create cron job
kubectl apply -f pie-counter-cronjob.yaml

kubectl get cronjobs

kubectl get pods

# Delete the job
kubectl delete -f pie-counter-cronjob.yaml