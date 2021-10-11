#!/usr/bin/env bash
# shellcheck disable=SC1090
# shellcheck disable=SC2034
# shellcheck disable=SC2046

_CI_IMAGE_CI_DIR="/ci"
_CI_IMAGE_LOCAL_BIN_DIR="/usr/local/bin"
_CI_IMAGE_WORK_DIR="/app"
_CI_IMAGE_APP_DIR="${_CI_IMAGE_APP_DIR:-${_CI_IMAGE_WORK_DIR}}"
_CI_JOB_VERSION_PATCH="latest"

. "${PWD}/.dynamic.env" \
&& export $(cat "${PWD}/.dynamic.env" | awk '{sub(/=.*/, ""); print}' | tr '\n' ' ') \
&& docker-compose build --no-cache
