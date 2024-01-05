# Node cordoning

Node cordoning is a Kubernetes operation that prevents new pods from being scheduled onto a particular node while allowing existing pods to continue running on that node. Cordoning a node is useful when you want to perform maintenance or troubleshooting on the node without affecting running workloads.

Here's how node cordoning works with an example:

Let's assume you have a Kubernetes cluster with multiple nodes. One of the nodes is named `node-1`. You want to perform maintenance on `node-1` without causing disruptions to the running pods.

1. **Cordoning the Node**:

   To cordon `node-1`, you use the `kubectl cordon` command:

   ```bash
   kubectl cordon node-1
   ```

   After running this command, the Kubernetes scheduler will stop scheduling new pods onto `node-1`, but the existing pods on the node will continue to run as usual.

2. **Verify Cordoning**:

   You can verify that `node-1` has been cordoned by checking its status:

   ```bash
   kubectl get nodes node-1
   ```

   The output might look like this:

   ```
   NAME      STATUS                     ROLES    AGE     VERSION
   node-1    Ready,SchedulingDisabled   <none>   1d      v1.21.3
   ```

   The `SchedulingDisabled` status indicates that new pods will not be scheduled on this node.

3. **Perform Maintenance**:

   Now that `node-1` is cordoned, you can perform maintenance tasks, such as updating the node's software, making configuration changes, or troubleshooting issues.

4. **Uncordoning the Node**:

   After you've completed the maintenance tasks, you can uncordon the node to allow new pods to be scheduled on it again:

   ```bash
   kubectl uncordon node-1
   ```

   Once uncordoned, the node will be available for scheduling new pods based on the Kubernetes scheduler's decisions.

Node cordoning is an important tool for managing cluster nodes during maintenance or other operational tasks. It helps ensure that existing workloads can continue running while preventing new workloads from being scheduled on potentially problematic nodes.
