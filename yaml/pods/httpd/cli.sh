# -----------------------------Imperative-------------------------------------- #

# Create container using Apache Web Server httpd
kubectl run httpd-pod --image=httpd:2.4.38 --port=80 

# Forward the port
kubectl port-forward httpd-pod 8080:80

# Create Pod manifest file
kubectl run httpd-pod --image=httpd:2.4.38 --port=80 --dry-run -o yaml > httpd-pod.yaml 

# Create pod using manifest file
kubectl apply -f httpd-pod.yaml

# Exec into the pod
kubectl exec -it httpd-pod -- bash

# Rename existing index.html file 
mv /usr/local/apache2/htdocs/index.html /usr/local/apache2/htdocs/index2.html

# Create new index.html file
echo "<html> Hello </html>" > /usr/local/apache2/htdocs/index.html

# Exit from the pod
exit

# Forward the port and check updated web page
kubectl port-forward httpd 8080:80

# -----------------------------Declarative-------------------------------------- #

# TODO