#!/usr/bin/env bash
# shellcheck disable=SC2034
# shellcheck disable=SC2046
# shellcheck disable=SC2086

_CI_RUNTIME_COMPOSER_HOME=${HOME}/.config/composer
_CI_RUNTIME_COMPOSER_CACHE_DIR=${HOME}/.cache/composer
_CI_RUNTIME_GID="$(id -g)"
_CI_RUNTIME_HOME="${HOME}"
_CI_RUNTIME_SATIS_HOST="satis.itmo.dev"
_CI_RUNTIME_SATIS_PASSWORD="itmo2021"
_CI_RUNTIME_SATIS_USER="itmodev"
_CI_RUNTIME_UID="$(id -u)"
_CI_RUNTIME_USER="${USER}"
_CI_RUNTIME_SSH_USER="${LOCAL_CI_RUNTIME_SSH_USER:-${_CI_RUNTIME_USER}}"
_CI_JOB_VERSION_MINOR="7.4"

. "${PWD}/.dynamic.env" \
&& export $(awk '{sub(/=.*/, ""); print}' < "${PWD}/.dynamic.env" | tr '\n' ' ') \
&& cp ${LOCAL_CI_SSH_KEY_PATH:-${HOME}/.ssh/id_rsa} ./id_rsa \
&& cp ${LOCAL_CI_SSH_KEY_PATH:-${HOME}/.ssh/id_rsa}.pub ./id_rsa.pub \
&& docker-compose build --no-cache
