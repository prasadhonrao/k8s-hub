# CKA Certification Challenge 1

## Challenge Details

Create new deployment called web-003 using any image. Scale the deployment to 3 replicas. Make sure desired number of pods always running.

## Solution

```sh
kubectl create deployment web-003 --image=nginx
```

```sh
kubectl scale deployment web-proj-268 --replicas=3
```
