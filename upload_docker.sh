#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=gadahoth/microproject

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username=gadahoth --email=gadah.oth@gmail.com
docker tag 3ab710881dac gadahoth/microproject:v1

# Step 3:
# Push image to a docker repository
docker push gadahoth/microproject
