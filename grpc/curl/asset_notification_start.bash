#!/bin/bash

source grpc/curl/env.bash

if [ $# -ne 1 ]
then
    echo "Usage: $0 <asset-name>"
    exit 1
fi
ASSET_NAME=${1}

grpcurl -proto \
    ${GRPC_SPEC_PATH} \
    -d "{ \"name\": \"${ASSET_NAME}\" }" \
    -plaintext \
    ${GRPC_SERVER_ADDR}:${GRPC_SERVER_PORT} \
    hakoniwa.CoreService.AssetNotificationStart