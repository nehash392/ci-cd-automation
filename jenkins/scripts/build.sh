#!/bin/bash
set -e

echo "Starting build process..."

APP_NAME="demo-app"
IMAGE_TAG="latest"


echo "Building Docker image..."
docker build -t $APP_NAME:$IMAGE_TAG .

echo "Build completed successfully."
