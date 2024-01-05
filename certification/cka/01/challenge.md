# CKA Certification Challenge 1

## Challenge Details

Create a new pod called admin-pod with image busy-box. Allow the pod to be able to set system_time. The container should sleep for 3200 seconds.

## Solution

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: admin-pod
spec:
    containers:
    - name: admin-pod
        image: busybox
        command: ["sleep", "3200"]
        securityContext:
        capabilities:
            add: ["SYS_TIME"]
```
