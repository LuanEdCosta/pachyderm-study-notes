#!/bin/sh

# Start kubernetes cluster
minikube start

# Deploy Pachyderm locally in the kubernetes cluster
pachctl deploy local

# Delete images if exist
docker image rm pachyderm-clean pachyderm-markdown

# Build docker image for the clean module
docker build ./clean -t pachyderm-clean

# Build docker image for the markdown module
docker build ./markdown -t pachyderm-markdown

# Load the docker image of the clean module in the kubernetes cluster
minikube image load pachyderm-clean

# Load the docker image of the markdown module in the kubernetes cluster
minikube image load pachyderm-markdown

# Wait pachd to be ready
kubectl wait --for=condition=ready --timeout=-1s pod -l app=pachd

# Create a repo to put the data 
pachctl create repo data

# Put ./data/text.txt in the branch master of the data repository
# Pachyderm automatically makes a commit for you
pachctl put file data@master:text.txt -f ./data/text.txt

# Create the pipeline to clean the data
pachctl create pipeline -f ./clean/pipeline.json

# Create the pipeline to create a markdown file
pachctl create pipeline -f ./markdown/pipeline.json