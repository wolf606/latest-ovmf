#!/bin/bash

# Enable BuildKit
export DOCKER_BUILDKIT=1

# Build Docker image
docker build -t OvmfPkg .

# Run Docker container and copy binaries
mkdir -p "$(dirname "$(realpath "$0")")/output"

CONTAINER_ID=$(docker run -d OvmfPkg)
docker cp $CONTAINER_ID:/edk2/Build/OvmfX64/RELEASE_GCC5/FV/OVMF_CODE.fd $(dirname "$(realpath $0)")/output/OVMF_CODE.fd
docker cp $CONTAINER_ID:/edk2/Build/OvmfX64/RELEASE_GCC5/FV/OVMF_VARS.fd $(dirname "$(realpath $0)")/output/OVMF_VARS.fd

# Stop and remove the container
docker stop $CONTAINER_ID
docker rm $CONTAINER_ID
