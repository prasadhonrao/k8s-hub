# Node draining

Node draining is a process in Kubernetes that involves gracefully evacuating all pods from a node before performing maintenance, upgrades, or decommissioning the node. Draining ensures that workloads are rescheduled to other nodes and that no disruption occurs to the applications running on the node being drained.

Here's how node draining works with an example:

Let's assume you have a Kubernetes cluster with multiple nodes. One of the nodes is named `node-1`. You want to perform maintenance on `node-1` by draining it to ensure that the workloads running on that node are rescheduled elsewhere.

1. **Draining the Node**:

   To drain `node-1`, you use the `kubectl drain` command:

   ```bash
   kubectl drain node-1
   ```

   When you run this command, Kubernetes will initiate the process of evacuating pods from `node-1`. It will follow these steps for each pod on the node:

   - Mark the pod as unschedulable to prevent new pods from being scheduled onto the node.
   - Wait for existing connections to the pod to be closed.
   - Delete the pod from the node.

2. **Monitor the Draining Process**:

   While the node draining process is ongoing, you can monitor the status of the pods using `kubectl get pods`:

   ```bash
   kubectl get pods --all-namespaces -o wide --field-selector spec.nodeName=node-1
   ```

   This command will show you the status of pods running on `node-1` and whether they are being moved to other nodes.

3. **Verify Draining**:

   After draining is complete, you can verify that no pods are running on `node-1`:

   ```bash
   kubectl get pods --all-namespaces -o wide --field-selector spec.nodeName=node-1
   ```

   The output should show that all pods have been rescheduled to other nodes.

4. **Perform Maintenance**:

   With all pods evacuated from `node-1`, you can perform maintenance tasks, such as updating the node's software or making configuration changes.

5. **Uncordoning the Node**:

   Once the maintenance is complete, you can uncordon the node to allow new pods to be scheduled on it again:

   ```bash
   kubectl uncordon node-1
   ```

   The node will now be available for scheduling new pods again.

Node draining is a controlled and orchestrated way to ensure that the workloads on a node are safely moved to other nodes before maintenance. It helps prevent disruptions and ensures the stability of your applications during node maintenance operations.
