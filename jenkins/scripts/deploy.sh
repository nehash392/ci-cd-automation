#!/bin/bash
set -e

echo "Starting deployment process..."

CLUSTER_NAME="demo-cluster"
SERVICE_NAME="demo-service"
REGION="us-east-1"
APP_NAME="demo-app"
IMAGE_TAG="latest"
AWS_ACCOUNT_ID="123456789012" 
ECR_REPO="$AWS_ACCOUNT_ID.dkr.ecr.$REGION.amazonaws.com/$APP_NAME"


echo "Logging in to AWS ECR..."
aws ecr get-login-password --region $REGION | docker login --username AWS --password-stdin $ECR_REPO


echo "🏷️ Tagging Docker image..."
docker tag $APP_NAME:$IMAGE_TAG $ECR_REPO:$IMAGE_TAG


echo "Pushing Docker image to ECR..."
docker push $ECR_REPO:$IMAGE_TAG

echo "Deploying to ECS..."
aws ecs update-service \
    --cluster $CLUSTER_NAME \
    --service $SERVICE_NAME \
    --force-new-deployment \
    --region $REGION

echo "Deployment completed successfully."
