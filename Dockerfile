# Use Ubuntu 22.04 as the base image
FROM ubuntu:22.04

# Set environment variables
ENV DEBIAN_FRONTEND noninteractive

# Install necessary packages
RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    uuid-dev \
    acpica-tools \
    nasm \
    python3 \
    python3-pip \
    curl

# Create python symbolic link
RUN ln -s $(which python3) /usr/local/bin/python

# Set work directory
WORKDIR /edk2

# Fetch the latest release
RUN LATEST_RELEASE=$(curl -s "https://api.github.com/repos/tianocore/edk2/releases/latest" | grep -o '"tag_name": "[^"]*' | sed 's/"tag_name": "//') \
    && export LATEST_RELEASE \
    && echo "Latest Release: $LATEST_RELEASE" \
    && git clone --depth 1 "https://github.com/tianocore/edk2.git" -b "$LATEST_RELEASE" /edk2

# Change working directory
WORKDIR /edk2

# Initialize and update submodules
RUN git submodule update --init --recursive

# Source edksetup script
RUN . ./edksetup.sh \
    && make -C BaseTools \
    && build -a X64 -b RELEASE -t GCC5 -p OvmfPkg/OvmfPkgX64.dsc -DSECURE_BOOT_ENABLE=TRUE

# Copy the generated binaries to the output directory
RUN mkdir -p /output \
    && cp Build/OvmfX64/RELEASE_GCC5/FV/OVMF_CODE.fd /output \
    && cp Build/OvmfX64/RELEASE_GCC5/FV/OVMF_VARS.fd /output

# Set the output directory as the working directory
WORKDIR /output

