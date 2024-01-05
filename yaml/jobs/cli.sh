# Create hello job imperatively
kubectl create job hello --image=busybox -- /bin/sh -c "echo hello;sleep 30"

# Delete hello job
kubectl delete job hello

# Delete all jobs
kubectl delete job --all

# Hello World Job
kubectl apply -f hello-world-job.yaml
kubectl get jobs
kubectl get pods
kubectl describe pod <pod name>
kubectl delete -f hello-world-job.yaml

