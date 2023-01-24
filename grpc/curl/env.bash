#!/bin/bash

export GRPC_SERVER_ADDR=localhost
export GRPC_SERVER_PORT=50051
export GRPC_SPEC_PATH=./grpc/hakoniwa_core.proto

export HAKO_CORE_PATH=../hakoniwa-conductor/main
#FROM CORE_PATH RELATIVE PATH
export HAKO_CMD=../../hakoniwa-core-cpp-client/cmake-build/core/sample/base-procs/hako-cmd/hako-cmd
