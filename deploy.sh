#!/bin/bash
pods_id=$(microk8s kubectl get pods -n react-microk8s |grep react-deployment |awk {'print $1'})
microk8s kubectl delete pod $pods_id -n react-microk8s
