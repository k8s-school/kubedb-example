#!/bin/bash

# Install kubedb and then, a redis cluster

set -euxo pipefail

DIR=$(cd "$(dirname "$0")"; pwd -P)

NS="demo"

# List cluster nodes
kubectl exec -it redis-cluster-shard0-0 -n "$NS" -c redis -- redis-cli -c cluster nodes

kubectl exec -it redis-cluster-shard0-0 -n "$NS" -c redis -- redis-cli -c cluster keyslot hello

# TODO finish using https://kubedb.com/docs/v0.13.0-rc.0/guides/redis/clustering/redis-cluster/#data-availability
kubectl exec -it redis-cluster-shard0-0 -n "$NS" -c redis -- redis-cli -c -h redis-cluster set hello world
kubectl exec -it redis-cluster-shard0-0 -n "$NS" -c redis -- redis-cli -c -h redis-cluster get hello
