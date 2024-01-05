# What is canary deployment?

A canary deployment is a deployment strategy that releases an application or service incrementally to a subset of users. All infrastructure in a target environment is updated in small phases (e.g: 2%, 25%, 75%, 100%). A canary release is the lowest risk-prone, compared to all other deployment strategies, because of this control.

Canary deployments uses two versions of the application in the SAME environment : a canary version and a production version. The canary version is deployed to a subset of users and the production version is deployed to the remaining users. The canary version is used to test the production version.