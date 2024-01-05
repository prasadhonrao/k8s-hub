# Kubernetes Quota

In Kubernetes, resource quotas are a way to limit and control the amount of compute resources (such as CPU and memory) and object counts (such as pods and services) that can be consumed by a namespace. Resource quotas provide a way to ensure that applications within a namespace don't consume excessive resources, preventing one application from negatively impacting others.

Here's an explanation of quotas with an example:

### Example: Resource Quota for a Namespace

Let's consider an example where you want to set resource quotas for a namespace to ensure that different teams or applications within that namespace don't exceed certain resource limits.

1. **Create a Namespace**: First, you'll create a namespace for the teams or applications that you want to manage with quotas.

```yaml
apiVersion: v1
kind: Namespace
metadata:
  name: my-namespace
```

2. **Define Resource Quotas**: Now, define a resource quota that limits the amount of CPU and memory that can be used within the namespace.

```yaml
apiVersion: v1
kind: ResourceQuota
metadata:
  name: my-resource-quota
  namespace: my-namespace
spec:
  hard:
    requests.cpu: '1'
    requests.memory: 1Gi
    limits.cpu: '2'
    limits.memory: 2Gi
    pods: '10'
```

In this example, the resource quota specifies that:

- The total requests for CPU and memory can't exceed 1 CPU and 1 GiB of memory.
- The total limits for CPU and memory can't exceed 2 CPUs and 2 GiB of memory.
- The namespace can't have more than 10 pods.

3. **Apply the Resource Quota**: Apply the resource quota configuration to the namespace.

```shell
kubectl apply -f my-resource-quota.yaml
```

4. **Enforcing Limits**: Once the quota is applied, Kubernetes will enforce the limits you've set. If any application or team within the namespace tries to exceed these limits, Kubernetes will prevent the creation of new resources that would violate the quota.

### Use Cases for Resource Quotas

Resource quotas are valuable for various use cases:

- **Resource Management**: Quotas ensure that resources are fairly allocated among different applications or teams in a namespace.

- **Preventing Resource Hogging**: Quotas prevent any single application from consuming excessive resources, which could affect the performance of other applications.

- **Multi-Tenancy**: In multi-tenant environments, quotas help ensure that different tenants or teams do not interfere with each other's resources.

- **Cost Control**: Quotas can help control costs by ensuring that applications do not use more resources than intended.

In summary, Kubernetes resource quotas allow you to set limits on resource consumption within a namespace, ensuring resource fairness, preventing resource hogging, and maintaining control over resource usage. They are especially useful in scenarios where multiple teams or applications share the same cluster.
