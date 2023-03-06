#!/bin/bash


source grpc/curl/env.bash

if [ $# -ne 4 ]
then
    echo "Usage: $0 <asset_name> <channel_id> <pdu_size> <method_type>"
    exit 1
fi

ASSET_NAME=${1}
CHANNEL_ID=${2}
PDU_SIZE=${3}
METHOD_TYPE=${4}

grpcurl -proto \
    ${GRPC_SPEC_PATH} \
    -d "{ \"asset_name\": \"${ASSET_NAME}\", \"channel_id\": \"${CHANNEL_ID}\", \"pdu_size\": \"${PDU_SIZE}\", \"method_type\": \"${METHOD_TYPE}\" }" \
    -plaintext \
    ${GRPC_SERVER_ADDR}:${GRPC_SERVER_PORT} \
    hakoniwa.CoreService.CreatePduChannel
