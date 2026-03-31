#!/bin/bash

#variable
REPO_URL="https://github.com/sample-project/demo-app.git"
LOCAL_DIR="repo"
S3_BUCKET="s3://my-bucket-name"

echo "Cloning repositry..."
git clone $REPO_URL $LOCAL_DIR

echo "Uploading files to s3.."
aws s3 sync $LOCAL_DIR $S3_BUCKET

echo "upload completed successfully!"
