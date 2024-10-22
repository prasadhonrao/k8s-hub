# Get all contexts
kubectl config get-contexts

# Set the context to the docker desktop
kubectl config use-context docker-desktop

# Get all pods in the kube-system namespace
kubectl get pods -n kube-system

# Get the kube-apiserver pod
kubectl describe pod kube-apiserver -n kube-system | grep -i enable-admission

# Enable NamespaceAutoProvisioning admission controller in the kube-apiserver
# Edit the kube-apiserver pod
kube-apiserver -n kube-system | grep -i enable-admission-plugins

# Enable NamespaceAutoProvisioning admission controller in the kube-apiserver
kube-apiserver --enable-admission-plugins=NamespaceAutoProvisioning -n kube-system

# Get the kube-apiserver pod
kubectl describe pod kube-apiserver -n kube-system | grep -i enable-admission

# Disable NamespaceAutoProvisioning admission controller in the kube-apiserver
kube-apiserver --disable-admission-plugins=NamespaceAutoProvisioning -n kube-system

# Get the kube-apiserver pod
kubectl describe pod kube-apiserver -n kube-system | grep -i enable-admission

