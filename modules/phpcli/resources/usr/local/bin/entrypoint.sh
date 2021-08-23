#!/usr/bin/env bash
# shellcheck disable=SC2086
set -ex

target="${1:-composer_enable}"
directory="${2:-${_CI_IMAGE_CI_DIR}}"

make "${target}" \
    --directory="${directory}" \
    "${@:3}"
