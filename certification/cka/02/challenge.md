# CKA Certification Challenge 1

## Challenge Details

Create new deployment called web-proj-268, with image nginx:1.16 and 1 replica. Next upgrade the deployment to version 1.17 using rolling update. Make sure that the version upgrade is recorded in the resource annotation.

## Solution

```sh
kubectl create deployment web-proj-268 --image=nginx:1.16 --replicas=1
```

```sh
kubectl set image deployment web-proj-268 nginx=nginx:1.17 --record
```
