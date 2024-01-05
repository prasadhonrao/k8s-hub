# CKA Certification Challenge 4

## Challenge Details

Upgrade the cluster (Master and worker Nodes) from 1.18.0 to 1.19.0. Make sure to first drain both the nodes and make it available after upgrade.

## Solution

```sh
kubectl get nodes -o wide

kubectl drain aks-lpool-11224387-vmss000003 --ignore-daemonsets

kubectl get pods -o wide

kubectl uncordon aks-lpool-11224387-vmss000003

```
