#!/usr/bin/env bash
# shellcheck disable=SC2034
# shellcheck disable=SC2046
# shellcheck disable=SC2086

_CI_IMAGE_ARTIFACT_DIR="/artifact"
_CI_IMAGE_CI_DIR="/ci"
_CI_IMAGE_WORK_DIR="/app"
_CI_IMAGE_APP_DIR="${_CI_IMAGE_APP_DIR:-${_CI_IMAGE_WORK_DIR}}"
_CI_JOB_VERSION_PATCH=15.13.0

. "${PWD}/.dynamic.env" \
&& export $(awk '{sub(/=.*/, ""); print}' < "${PWD}/.dynamic.env" | tr '\n' ' ') \
&& docker-compose build --no-cache
