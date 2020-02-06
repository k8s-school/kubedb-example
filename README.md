[<img src="http://k8s-school.fr/images/logo.svg" alt="K8s-school Logo, expertise et formation Kubernetes" height="50" />](https://k8s-school.fr)

[![Build Status](https://travis-ci.org/k8s-school/kubedb-example.svg?branch=master)](https://travis-ci.org/k8s-school/kubedb-example)

# kubedb-example

Examples to set-up a storage system with KubeDB

## Quick start

Set-up a Kubernetes cluster and its related kubeconfig file, and then:

```bash
git clone https://github.com/k8s-school/kubedb-example.git
cd kubedb-example
./install.sh
kubectl get redis -n demo
kubectl get pods -n demo
```

A redis cluster is now running in namespace `demo`.

- Check [redis-operator documentation](https://kubedb.com/docs/v0.13.0-rc.0/guides/redis/) to discover all the features provided by the KubeDB operator.
- Check [redis-cluster documentation](https://kubedb.com/docs/v0.13.0-rc.0/guides/redis/clustering/redis-cluster/) to learn more about using this redis instance.
