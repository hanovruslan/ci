#!/usr/bin/env bash
# Use this script only in the container, not in the image. Current user must be not root

mkdir -p "${COMPOSER_CACHE_DIR}" "${COMPOSER_HOME}" \
&& composer config -g http-basic."${_CI_RUNTIME_SATIS_HOST}" "${_CI_RUNTIME_SATIS_USER}" "${_CI_RUNTIME_SATIS_PASSWORD}"
