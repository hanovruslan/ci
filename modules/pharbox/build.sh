#!/usr/bin/env bash

_CI_JOB_VERSION_PATCH="${1:-3.10.0}"
_CI_IMAGE_CI_DIR="/ci"
_CI_IMAGE_LOCAL_BIN_DIR="/usr/local/bin"

. "${PWD}/.dynamic.env" \
&& export $(cat "${PWD}/.dynamic.env" | awk '{sub(/=.*/, ""); print}' | tr '\n' ' ') \
&& docker-compose build --no-cache
