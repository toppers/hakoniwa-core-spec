#!/bin/bash

source grpc/curl/env.bash

bash grpc/curl/register.bash TEST 
bash grpc/curl/create_pdu_channel.bash TEST 0 100

CURR_DIR=`pwd`
cd ${HAKO_CORE_PATH}
${HAKO_CMD} ls
${HAKO_CMD} start
