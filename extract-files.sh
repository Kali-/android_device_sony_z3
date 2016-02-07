#!/bin/bash

# Use tradition sort
export LC_ALL=C

FP=$(cd ${0%/*} && pwd -P)
export VENDOR=$(basename $(dirname $FP))
export DEVICE=$(basename $FP)
export BOARDCONFIGVENDOR=true
export TARGET_DEVICE=$DEVICE

../common/extract-files.sh $@
../common/setup-makefiles.sh
./setup-makefiles.sh
