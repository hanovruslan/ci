#!/bin/bash -x
# shellcheck disable=SC2034
# shellcheck disable=SC2046

_CI_IMAGE_ARTIFACT_DIR="/artifact"
_CI_IMAGE_CI_DIR="/ci"
_CI_IMAGE_APP_DIR="/app"
_CI_JOB_VERSION_PATCH=15.13.0

. "${PWD}/.dynamic.env" \
&& export $(awk '{sub(/=.*/, ""); print}' < "${PWD}/.dynamic.env" | tr '\n' ' ') \
&& docker-compose build --no-cache
