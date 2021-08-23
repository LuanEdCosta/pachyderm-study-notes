#!/bin/sh

# Delete everything created by Pachyderm
yes y | pachctl delete all

# Remove docker image from the minikube image list
minikube image rm docker.io/library/pachyderm-clean:latest

# Remove docker image from the minikube image list
minikube image rm docker.io/library/pachyderm-markdown:latest

# Delete images if exist
docker image rm pachyderm-clean pachyderm-markdown

# Delete kubernetes cluster
minikube delete