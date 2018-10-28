#!/usr/bin/env bash

# echo "Hello guys, I'm building..."
# gcloud builds submit -t gcr.io/investlift-ng/payroll:v0.1 . --timeout=2400s
# echo "Hello guys, I'm done building..."

### CREATE SECRET: ###
# kubectl create -f ./secret.yaml

### CREATE A DEPLOYMENT ###
# kubectl apply -f ./deployment.yaml

### DISPLAY INFORMATION ABOUT DEPLOYMENT ###
# kubectl describe deployment payroll-deployment


### EXPOSE PORT USING LOADBALANCER SERVICE ###
# kubectl expose deployment payroll --type=LoadBalancer --name=payroll-loadbalancer --target-port=8080 --port=80