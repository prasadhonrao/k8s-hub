# NGINX Custom HTML

This is a simple single HTML page application which is used to create container based on prasadhonrao/html-hello-world image which replaces the original index.html file used by nginx container.

## Run Instructions

1. Create a pod using following command

   `kubectl apply -f pod.yaml`

2. Run docker container

   `kubectl port-forward nginx-custom-html-pod 8080:80`

3. Navigate to browser and check custom HTML page at http://localhost:8080

4. Delete the pod template

   `kubectl delete -f pod.yaml`
