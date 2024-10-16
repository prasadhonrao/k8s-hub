# Apply the job
kubectl apply -f echo-job.yaml

# Check the job
kubectl get jobs 

# Describe the job
kubectl describe job echo-job

# Check the pods associated with the job
kubectl get pods -l job-name=echo-job --watch

# Check the output of the job
kubectl logs echo-job-4cfsr

# Delete the job
kubectl delete -f echo-job.yaml