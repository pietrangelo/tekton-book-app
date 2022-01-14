#!/usr/bin/env bash
export TEKTON_SECRET=$(head -c 24 /dev/random | base64)
kubectl create secret generic git-secret --from-literal=secretToken=$TEKTON_SECRET
echo $TEKTON_SECRET
