#!/usr/bin/env bash

name="${1:-${_CI_RUNTIME_COMPOSER_PACKAGE_NAME:-}}"
version="${2:-${_CI_RUNTIME_COMPOSER_PACKAGE_VERSION:-dev-master as 99.0.0}}"
directory="${3:-${_CI_IMAGE_APP_DIR}}"
repository=${4:-https://${_CI_RUNTIME_SATIS_HOST}}

export name
export version
export directory
export repository

composer create-project \
  --ansi \
  --no-progress \
  --keep-vcs \
  --no-interaction \
  --repository-url="${repository}" \
  "${name}" "${directory}" "${version}"
