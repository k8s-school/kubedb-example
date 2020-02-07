#!/bin/bash

# Install kubedb

set -euxo pipefail

DIR=$(cd "$(dirname "$0")"; pwd -P)

KUBEDB_VERSION="v0.13.0-rc.0"
NS="demo"


# See https://kubedb.com/docs/v0.13.0-rc.0/setup/install/, but installer is broken
curl -fsSL https://raw.githubusercontent.com/kubedb/installer/89fab34cf2f5d9e0bcc3c2d5b0f0599f94ff0dca/deploy/kubedb.sh | bash
kubectl get pods -n kube-system | grep kubedb-operator

kubectl  wait --for=condition=Ready pods -l app=kubedb --all-namespaces
kubectl get crd -l app=kubedb

wget -O kubedb https://github.com/kubedb/cli/releases/download/$KUBEDB_VERSION/kubedb-linux-amd64 \
  && chmod +x kubedb \
  && sudo mv kubedb /usr/local/bin/
