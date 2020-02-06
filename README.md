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

A redis cluster is now running in namespace `demo`. Check [related documentation](https://kubedb.com/docs/v0.13.0-rc.0/guides/redis/clustering/redis-cluster/) to learn more about it.