#!/bin/bash

# Set relative path to the workspace folder
WORKSPACE_FOLDER="$(pwd)/workspace"

# Build the Docker image
docker build --platform linux/amd64 -t cc3-env .

# Create the container and bind the workspace folder
docker create -it --platform linux/amd64 --name cc3-vm -e DISPLAY=host.docker.internal:0 -v "$WORKSPACE_FOLDER:/workspace" cc3-env
