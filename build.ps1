# Enable BuildKit
$env:DOCKER_BUILDKIT = 1

# Build Docker image
docker build -t ovmfpkg .

# Run Docker container and copy binaries
$outputDir = "$(Split-Path -Parent -Path $MyInvocation.MyCommand.Definition)\output"
New-Item -ItemType Directory -Force -Path $outputDir | Out-Null

$containerId = docker run -d ovmfpkg
docker cp "${containerId}:/edk2/Build/OvmfX64/RELEASE_GCC5/FV/OVMF_CODE.fd" "$outputDir\OVMF_CODE.fd"
docker cp "${containerId}:/edk2/Build/OvmfX64/RELEASE_GCC5/FV/OVMF_VARS.fd" "$outputDir\OVMF_VARS.fd"

# Stop and remove the container
docker stop $containerId
docker rm $containerId

