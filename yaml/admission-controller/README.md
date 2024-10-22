# Admission Controller

## Overview

An admission controller is a piece of code that intercepts requests to the Kubernetes API server prior to persistence of the object, but after the request is authenticated and authorized. It can be used to enforce custom policies, such as enforcing naming conventions, or other security policies. Admission controllers are enabled via the --enable-admission-plugins flag on the API server.

### Types of Admission Controllers

There are two types of admission controllers in Kubernetes:

1. **MutatingAdmissionWebhook**: This type of admission controller intercepts requests and may change the object. For example, it can add a sidecar container to a pod.

2. **ValidatingAdmissionWebhook**: This type of admission controller intercepts requests and may reject the object. For example, it can enforce a policy that all pods must have a certain label.

### Use Cases

Admission controllers can be used for a variety of use cases, such as:

1. **Security Policies**: Enforce security policies, such as requiring all pods to run as non-root users.

2. **Resource Quotas**: Enforce resource quotas, such as limiting the amount of CPU and memory that can be used by a namespace.

3. **Naming Conventions**: Enforce naming conventions, such as requiring all pods to have a certain prefix.

4. **Custom Policies**: Enforce custom policies, such as requiring all pods to have a certain label.

### Example

This example demonstrates how to create an admission controller that checks if the referenced namespace exists and creates it if it does not. The admission controller intercepts requests to create pods and checks if the namespace referenced in the pod exists. If the namespace does not exist, the admission controller creates the namespace before allowing the pod to be created.

Below is the YAML configuration for the admission controller:

```yaml
apiVersion: admissionregistration.k8s.io/v1
kind: MutatingWebhookConfiguration
metadata:
  name: namespace-validator
webhooks:
    - name: namespace-validator.example.com
        clientConfig:
        service:
            name: namespace-validator
            namespace: default  # Namespace where the service is deployed
```
