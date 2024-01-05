# ResourceQuota

In Kubernetes, a ResourceQuota is a resource management policy that allows you to set constraints on the aggregate resource usage within a namespace. It provides a way to limit the total amount of resources, such as CPU and memory, that can be consumed by Pods and other objects within a specific namespace. ResourceQuotas help cluster administrators ensure fair resource allocation and prevent resource exhaustion in a multi-tenant cluster.

A ResourceQuota typically includes the following settings:

1. `limits`: Specifies the maximum resource limits for various resource types, such as CPU and memory.

2. `requests`: Specifies the maximum total resource requests (which includes the sum of all resource requests across all Pods and objects) for various resource types.

3. `scopes`: Defines which objects within the namespace are affected by the ResourceQuota. The scope can be "NotTerminating," "BestEffort," "Terminating," or "NotBestEffort."

Here's an example of a ResourceQuota:

```yaml
apiVersion: v1
kind: ResourceQuota
metadata:
  name: example-resource-quota
spec:
  hard:
    pods: '10'
    requests.cpu: '2'
    requests.memory: '2Gi'
    limits.cpu: '4'
    limits.memory: '4Gi'
```

In this example:

- The ResourceQuota is named "example-resource-quota."

- It specifies hard limits on resource consumption within the namespace:

  - Up to 10 Pods can be created.
  - The total CPU requests across all Pods cannot exceed 2 CPU cores.
  - The total memory requests across all Pods cannot exceed 2 GiB.
  - The total CPU limits across all Pods cannot exceed 4 CPU cores.
  - The total memory limits across all Pods cannot exceed 4 GiB.

- This ResourceQuota applies to all objects within the namespace, regardless of whether they are "Terminating" or "BestEffort."

If a namespace has a ResourceQuota defined, any attempt to create or update objects within the namespace that would violate the specified resource limits will be denied. For example, if you try to create a Pod with resource requests or limits that would exceed the limits set in the ResourceQuota, the creation of the Pod will be rejected.

ResourceQuotas are a powerful tool for enforcing resource limits, managing costs, and ensuring a fair distribution of resources within a Kubernetes namespace. They are especially useful in scenarios where multiple teams or applications share the same Kubernetes cluster, helping to prevent one tenant from over-consuming resources and negatively impacting others.
