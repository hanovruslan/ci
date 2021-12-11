#!/bin/bash -x
# shellcheck disable=SC2034
# shellcheck disable=SC2046
# shellcheck disable=SC2002

_CI_IMAGE_CI_DIR="/ci"
_CI_JOB_VERSION_PATCH="7.4.16"

. "${PWD}/.dynamic.env" \
&& export $(cat "${PWD}/.dynamic.env" | awk '{sub(/=.*/, ""); print}' | tr '\n' ' ') \
&& docker-compose build --no-cache
