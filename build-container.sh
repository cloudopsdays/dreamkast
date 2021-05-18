#!/bin/bash
IMAGE_TAG=$1
GITHUB_SHA=$2

CACHE_NODE=$ECR_REGISTRY/$ECR_REPOSITORY:node-cache
CACHE_FETCH_LIB=$ECR_REGISTRY/$ECR_REPOSITORY:fetch-lib-cache
CACHE_COMPILE_CACHE=$ECR_REGISTRY/$ECR_REPOSITORY:asset-compile-cache

IMAGE_WITH_TAG=$ECR_REGISTRY/$ECR_REPOSITORY:$IMAGE_TAG
IMAGE_WITH_SHA=$ECR_REGISTRY/$ECR_REPOSITORY:$GITHUB_SHA

export S3_REGION="ap-northeast-1"
export S3_BUCKET="dummy"
export AWS_ACCESS_KEY_ID="dummy"
export AWS_SECRET_ACCESS_KEY="dummy"

docker build \
  --cache-from=$CACHE_NODE \
  --cache-from=$CACHE_FETCH_LIB \
  --cache-from=$CACHE_COMPILE_CACHE \
  --build-arg=BUILDKIT_INLINE_CACHE=1 \
  -t $IMAGE_WITH_TAG \
  -t $IMAGE_WITH_SHA .

docker build --target node -t $CACHE_NODE --build-arg=BUILDKIT_INLINE_CACHE=1  .
docker build --target fetch-lib -t $CACHE_FETCH_LIB --build-arg=BUILDKIT_INLINE_CACHE=1  .
docker build --target asset-compile -t $CACHE_COMPILE_CACHE --build-arg=BUILDKIT_INLINE_CACHE=1  .

docker login -u AWS -p $(aws ecr-public get-login-password --region us-east-1) public.ecr.aws

docker tag $IMAGE_WITH_TAG $IMAGE_WITH_SHA
docker push $IMAGE_WITH_TAG
docker push $IMAGE_WITH_SHA
docker push $CACHE_NODE
docker push $CACHE_FETCH_LIB
docker push $CACHE_COMPILE_CACHE

echo "::set-output name=IMAGE_TAG::${IMAGE_TAG}"
echo "::set-output name=IMAGE_WITH_TAG::${IMAGE_WITH_TAG}"
echo "::set-output name=IMAGE_WITH_SHA::${IMAGE_WITH_SHA}"
