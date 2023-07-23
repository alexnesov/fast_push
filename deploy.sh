#!/bin/bash

echo "Adding the entire repository to git..."
git add *

read -p "Enter commit message: " message
git commit -m "$message"
git push
echo "Pushed changes to remote GitHub repository."

npm run build
echo "Build succeeded."

echo "Pushing the compiled project to the S3 remote bucket"
aws s3 sync build/ s3://project-based-virginia

echo "Invalidating CloudFront cache for the distribution"
aws cloudfront create-invalidation --distribution-id EU1T9KFHB6UUY --paths "/*"
