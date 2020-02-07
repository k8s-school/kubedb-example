#!/bin/bash

# Install a redis cluster, using kubedb

set -euxo pipefail

DIR=$(cd "$(dirname "$0")"; pwd -P)

NS="demo"

# See https://kubedb.com/docs/v0.13.0-rc.0/guides/redis/clustering/redis-cluster/

kubectl delete ns -l name="redis"
kubectl create ns "$NS"
kubectl label ns "$NS" name="redis"

kubectl get redisversions
kubectl apply -f $DIR/manifest/redis-cluster.yaml
kubectl wait --for=condition=Ready pod -n demo -l kubedb.com/kind=Redis,kubedb.com/name=redis-cluster
kubedb get redis -n demo
kubedb get all -n demo