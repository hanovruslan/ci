#!/usr/bin/env bash
# shellcheck disable=SC2034
# shellcheck disable=SC2046
# shellcheck disable=SC2086

_CI_RUNTIME_GID="$(id -g)"
_CI_RUNTIME_HOME="${HOME}"
_CI_RUNTIME_UID="$(id -u)"
_CI_RUNTIME_USER="${USER}"
_CI_JOB_VERSION_PATCH="latest"

. "${PWD}/.dynamic.env" \
&& export $(awk '{sub(/=.*/, ""); print}' < "${PWD}/.dynamic.env" | tr '\n' ' ') \
&& docker-compose build --no-cache
