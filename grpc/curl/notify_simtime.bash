#!/bin/bash

source grpc/curl/env.bash

if [ $# -ne 2 ]
then
    echo "Usage: $0 <asset-name> <time>"
    exit 1
fi
ASSET_NAME=${1}
TIME=${2}

grpcurl -proto \
    ${GRPC_SPEC_PATH} \
    -d "{ \"asset\": { \"name\": \"${ASSET_NAME}\" }, \"asset_time\": "${TIME}" }" \
    -plaintext \
    ${GRPC_SERVER_ADDR}:${GRPC_SERVER_PORT} \
    hakoniwa.CoreService.NotifySimtime