#!/bin/bash
set -e

echo "Starting rollback process..."

CLUSTER_NAME="demo-cluster"
SERVICE_NAME="demo-service"
REGION="us-east-1"


echo "Fetching previous deployment revision..."
PREVIOUS_TASK_DEF=$(aws ecs describe-services \
    --cluster $CLUSTER_NAME \
    --services $SERVICE_NAME \
    --region $REGION \
    --query "services[0].deployments[1].taskDefinition" \
    --output text)

if [ -z "$PREVIOUS_TASK_DEF" ]; then
    echo "No previous deployment found to rollback to."
    exit 1
fi

echo "Found previous task definition: $PREVIOUS_TASK_DEF"


echo "Rolling back ECS service..."
aws ecs update-service \
    --cluster $CLUSTER_NAME \
    --service $SERVICE_NAME \
    --task-definition $PREVIOUS_TASK_DEF \
    --region $REGION

echo "Rollback completed successfully."
