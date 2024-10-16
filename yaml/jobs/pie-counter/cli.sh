# -----------------------------Declarative-------------------------------------- #

# Get all API resources to check if Job is API Version (grouping)
kubectl api-resources

# Create the job
kubectl apply -f pie-counter-job.yaml

# Check the job
kubectl get jobs

# Check the pods
kubectl get pods

# Check the output of the job
kubectl logs pie-counter-job-2zm65

# Delete the job
kubectl delete -f pie-counter-job.yaml

# Delete all jobs
kubectl delete jobs --all