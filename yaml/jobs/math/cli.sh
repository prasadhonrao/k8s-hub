# -----------------------------Imperative-------------------------------------- #

# Create the job
kubectl create job math-add-job --image=busybox -- "expr 3 + 2"

# Check the job
kubectl get jobs

# Check the pods
kubectl get pods

# Check the output of the job
kubectl logs math-add-job-2zm65

# Delete the job
kubectl delete job math-add-job

# -----------------------------Declarative-------------------------------------- #

# Create the job
kubectl apply -f math-add-job.yaml

# Check the job
kubectl get jobs

# Check the pods associated with the job
kubectl get pods -l job-name=math-add-job

# Check the output of the job
kubectl logs math-add-job-2zm65

# Delete the job
kubectl delete -f math-add-job.yaml

# Delete all jobs
kubectl delete jobs --all