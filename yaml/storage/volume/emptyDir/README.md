# EmptyDir Volume Overview

In Kubernetes, an `EmptyDir` volume is a type of volume that is initially empty and is created when a Pod is assigned to a Node. This volume can be used to share data between containers within the same Pod and has a lifecycle tied to the Pod itself, meaning that the data is ephemeral and will be lost if the Pod is rescheduled or deleted.

In below example, we have a Pod with two containers: `nginx` and `html-updater`. Both containers share an EmptyDir volume named `empty-dir-volume`. Let's break down the components of this example:

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: nginx-empty-dir-volume-pod
spec:
  containers:
    - name: nginx
      image: nginx:alpine
      resources:
        limits:
          cpu: "100m"
          memory: "128Mi"
      volumeMounts:
        - name: empty-dir-volume
          mountPath: /usr/share/nginx/html
          readOnly: true
    - name: html-updater
      image: alpine
      resources:
        limits:
          cpu: "100m"
          memory: "128Mi"
      command: ["/bin/sh", "-c"]
      args:
        - while true; do date >> /html/index.html; sleep 10; done
      volumeMounts:
        - name: empty-dir-volume
          mountPath: /html
  volumes:
    - name: empty-dir-volume
      emptyDir: {}  # lifecycle tied to Pod
```

Explanation:

1. **Pod Definition**: This defines a Pod named 'nginx-empty-dir-volume-pod'.

2. **Containers**: There are two containers within the Pod - 'nginx' and 'html-updater'.

   - The 'nginx' container uses the official Nginx Alpine image and mounts the 'empty-dir-volume' at '/usr/share/nginx/html' in read-only mode. This is likely to serve static content from the Nginx container.

   - The 'html-updater' container uses the Alpine image and runs a shell command to continuously append the current date to the file '/html/index.html' every 10 seconds. It also mounts the 'empty-dir-volume' at '/html'.

3. **Volumes**: The Pod defines a volume named 'empty-dir-volume' of type EmptyDir. This means that the volume is initially empty and shared between the two containers. The EmptyDir volume has a lifecycle tied to the Pod, so if the Pod is deleted or rescheduled, the data within the volume is lost.

In summary, the EmptyDir volume in this example is used to share data between the 'nginx' and 'html-updater' containers within the same Pod. The data written by the 'html-updater' container in '/html/index2.html' will be visible to the 'nginx' container at '/usr/share/nginx/html'. Keep in mind that this data will be ephemeral and will be lost if the Pod is deleted or rescheduled.