#!/bin/bash -x
# shellcheck disable=SC2034
# shellcheck disable=SC2046
# shellcheck disable=SC2002

_CI_BUILD_NO_CACHE="$( [[ -n "${1}" ]] && echo " --no-cache" )"
_CI_IMAGE_ARTIFACT_DIR="/artifact"
_CI_IMAGE_CI_DIR="/ci"
_CI_IMAGE_LOCAL_BIN_DIR="/usr/local/bin"
_CI_IMAGE_APP_DIR="/app"
_CI_JOB_VERSION_PATCH="latest"

. "${PWD}/.dynamic.env" \
&& export $(cat "${PWD}/.dynamic.env" | awk '{sub(/=.*/, ""); print}' | tr '\n' ' ') \
&& docker-compose build"${_CI_BUILD_NO_CACHE}"
