#!/bin/bash -x
# Use this script only in the container, not in the image. Current user must be not root

mkdir -p "${COMPOSER_CACHE_DIR}" "${COMPOSER_HOME}"
