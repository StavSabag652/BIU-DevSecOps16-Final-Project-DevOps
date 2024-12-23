#!/bin/bash

# Check if Minikube is running
check_minikube() {
    echo "Step 1 - Minikube Check"
    if ! minikube status > /dev/null 2>&1; then
        echo "Minikube is not running. Please start Minikube."
        exit 1
    fi
    echo "Minikube is running."
}

check_minikube

# Function to start a Minikube cluster
cluster_init() {
    local cluster_name=$1
    echo "Starting Minikube cluster: $cluster_name"
    # minikube start -p "$cluster_name"
    # if [ $? -eq 0 ]; then
    #     echo "Cluster '$cluster_name' started successfully."
    # else
    #     echo "Failed to start cluster '$cluster_name'. Check the logs for details."
    # fi
}


# Define and start cluster resources
clusters=("backend" "frontend")
for cluster in "${clusters[@]}"; do
    cluster_init "$cluster"
done