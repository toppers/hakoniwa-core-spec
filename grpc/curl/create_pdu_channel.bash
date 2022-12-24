#!/bin/bash


source grpc/curl/env.bash

if [ $# -ne 3 ]
then
    echo "Usage: $0 <asset_name> <channel_id> <pdu_size>"
    exit 1
fi

ASSET_NAME=${1}
CHANNEL_ID=${2}
PDU_SIZE=${3}

grpcurl -proto \
    ${GRPC_SPEC_PATH} \
    -d "{ \"asset_name\": \"${ASSET_NAME}\", \"channel_id\": \"${CHANNEL_ID}\", \"pdu_size\": \"${PDU_SIZE}\" }" \
    -plaintext \
    ${GRPC_SERVER_ADDR}:${GRPC_SERVER_PORT} \
    hakoniwa.CoreService.CreatePduChannel
