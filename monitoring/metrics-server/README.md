# Metrics Server Documentation

Metrics Server is a scalable, efficient, and low-latency metrics collection server, designed to work in a Kubernetes cluster. It collects resource usage metrics (CPU, memory, etc.) from all nodes and pods in the cluster, providing insights into the overall health and performance.

## Overview

Metrics Server is a part of the Kubernetes Metrics pipeline. It collects metrics from Kubelet APIs and exposes them in the Kubernetes Metrics API. The collected metrics include:

- **Node Metrics:** CPU and memory usage for each node.
- **Pod Metrics:** CPU and memory usage for each pod.

These metrics are valuable for cluster administrators to monitor and optimize resource usage.

## Deployment

Metrics Server can be deployed on a Kubernetes cluster using YAML manifests. The following steps outline the deployment process:

1. **Download Manifests:**
   Download the Metrics Server manifests from the official GitHub repository:

   ```bash
   git clone https://github.com/kubernetes-sigs/metrics-server.git
   cd metrics-server/deploy/kubernetes
   ```

2. **Deploy Metrics Server:**
   Deploy Metrics Server using the provided manifests:

   ```bash
   kubectl apply -f .
   ```

   This will create the necessary deployments, services, and RBAC roles for Metrics Server.

3. **Verify Deployment:**
   Ensure that Metrics Server is running:

   ```bash
   kubectl get deployment metrics-server -n kube-system
   ```

   Wait until the deployment reaches the desired number of replicas.

## Usage

After deployment, you can use Metrics Server to query resource usage metrics. Here are some common commands:

- **Node Metrics:**
  Check CPU and memory usage for nodes:

  ```bash
  kubectl top nodes
  ```

- **Pod Metrics:**
  Check CPU and memory usage for pods in a specific namespace:

  ```bash
  kubectl top pods -n <namespace>
  ```

- **Cluster Metrics:**
  Check overall resource usage across all pods in all namespaces:

  ```bash
  kubectl top pods --all-namespaces
  ```

## Troubleshooting

If Metrics Server is not working as expected, consider the following troubleshooting steps:

- Check Metrics Server logs for any errors:

  ```bash
  kubectl logs -n kube-system deployment/metrics-server
  ```

- Ensure that the Metrics Server deployment has the correct number of replicas.

- Verify that the kubelet on each node is reachable from Metrics Server.

## Conclusion

Metrics Server is a crucial component for monitoring resource usage in Kubernetes clusters. By following this documentation, you should be able to deploy Metrics Server and leverage its metrics for cluster management and optimization. Always refer to the official documentation for the latest information and updates.

For more information, visit the [Metrics Server GitHub repository](https://github.com/kubernetes-sigs/metrics-server).
