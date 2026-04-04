#!/bin/bash
# Deploy Flask Phonebook to EKS

CLUSTER_NAME="your-cluster-name"
REGION="us-east-1"

echo "Updating kubeconfig..."
aws eks update-kubeconfig --name $CLUSTER_NAME --region $REGION

echo "Applying Kubernetes manifests..."
kubectl apply -f k8s/

echo "Checking pod status..."
kubectl get pods

echo "Deployment complete."
