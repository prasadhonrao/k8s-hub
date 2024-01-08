# -----------------------------Imperative-------------------------------------- #
# Create hello job imperatively
kubectl create job hello --image=busybox -- /bin/sh -c "echo hello; sleep 30"

# Delete hello job
kubectl delete job hello

# Delete all jobs
kubectl delete job --all

# -----------------------------Declarative-------------------------------------- #

# Create hello job declaratively
kubectl apply -f hello-job.yaml

# Check the job
kubectl get jobs

# Check the pods associated with the job
kubectl get pods -l job-name=hello

# Check the output of the job
kubectl logs hello-2zm65

# Delete the job
kubectl delete -f hello-job.yaml

# Delete all jobs
kubectl delete jobs --all