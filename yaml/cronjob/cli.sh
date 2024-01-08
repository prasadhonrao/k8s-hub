# -----------------------------Declarative-------------------------------------- #

# Create cron job
kubectl apply -f pie-counter-cronjob.yaml

# Check the cron job
kubectl get cronjobs

# Check the job
kubectl get pods

# Check the output of the job
kubectl logs pie-counter-cronjob-2zm65

# Delete the job
kubectl delete -f pie-counter-cronjob.yaml

# Delete all cron jobs
kubectl delete cronjobs --all