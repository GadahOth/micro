#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=gadahoth/microproject:latest

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username=gadahoth --email=gadah.oth@gmail.com
docker tag d293c1ca3a1e gadahoth/microproject:latest

# Step 3:
# Push image to a docker repository
docker push gadahoth/microproject:latest
