# Kubernetes DaemonSet

A Kubernetes DaemonSet is a resource configuration that ensures a specific pod runs on every node within a cluster. This is particularly useful for scenarios where you need to run a particular background service, monitoring agent, or any other process on every node, ensuring uniformity across the entire cluster. DaemonSets are well-suited for scenarios where you want to maintain a consistent state or configuration on each node.

Let's dive into an example to better understand DaemonSets:

### Example: Monitoring Agent DaemonSet

Imagine you have a Kubernetes cluster running multiple nodes, and you want to ensure that a monitoring agent is present on each node to collect metrics and monitor resource usage. To achieve this, you can use a DaemonSet.

1. **Create Monitoring Agent Container**: First, you need to have a containerized version of your monitoring agent. Let's call it `monitoring-agent` and specify its image.

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: monitoring-agent
spec:
  containers:
    - name: monitoring-agent
      image: your-monitoring-agent-image:latest
```

2. **Define DaemonSet**: Now, you'll create a DaemonSet resource configuration that deploys the `monitoring-agent` pod on every node in the cluster.

```yaml
apiVersion: apps/v1
kind: DaemonSet
metadata:
  name: monitoring-agent-daemonset
spec:
  selector:
    matchLabels:
      app: monitoring-agent
  template:
    metadata:
      labels:
        app: monitoring-agent
    spec:
      containers:
        - name: monitoring-agent
          image: your-monitoring-agent-image:latest
```

In this example, the DaemonSet specification includes a `selector` that targets pods labeled with `app: monitoring-agent`. The `template` section defines the pod configuration, which is the same as the standalone pod configuration.

3. **Apply the DaemonSet**: Once you've defined the DaemonSet configuration, apply it to your Kubernetes cluster.

```shell
kubectl apply -f monitoring-agent-daemonset.yaml
```

Now, Kubernetes will ensure that an instance of the `monitoring-agent` pod runs on each node within the cluster. If nodes are added or removed from the cluster, the DaemonSet will automatically adjust to maintain the desired number of pods.

### Use Cases for DaemonSets

DaemonSets are versatile and find applications in various scenarios:

- **Monitoring and Logging**: As demonstrated in the example, DaemonSets are ideal for deploying monitoring and logging agents to collect data from each node.

- **Security**: Security-related agents, like intrusion detection systems or endpoint protection, can be deployed as DaemonSets to ensure consistent protection across all nodes.

- **Data Collection**: When you need to gather data or metrics from every node, such as hardware information or custom telemetry, DaemonSets can be instrumental.

- **Storage**: Deploying storage-related components on each node, like storage drivers or distributed storage agents, can also be achieved using DaemonSets.

In summary, a Kubernetes DaemonSet ensures that a specific pod runs on each node, making it an effective tool for deploying background services, monitoring agents, and various other processes that need to be present across the cluster.
