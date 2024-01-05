kubectl create deployment web-proj-268 --image=nginx:1.16 --replicas=1

kubectl set image deployment web-proj-268 nginx=nginx:1.17 --record