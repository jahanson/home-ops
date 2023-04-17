#!/bin/bash
kubectl get pods --all-namespaces -o json | jq -r '.items[] | .spec.nodeName' | sort | uniq -c 
