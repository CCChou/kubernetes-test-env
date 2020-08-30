#!/usr/bin/env bash

curl -Lo ./kind "https://github.com/kubernetes-sigs/kind/releases/download/v0.7.0/kind-$(uname)-amd64"
chmod +x ./kind
cat > kind.yaml << EOF
kind: Cluster
apiVersion: kind.sigs.k8s.io/v1alpha3
nodes:
- role: control-plane
- role: worker
- role: worker
EOF
sudo ./kind create cluster --config kind.yaml
sudo chown -R $USER $HOME/.kube