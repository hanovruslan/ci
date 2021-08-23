#!/usr/bin/env bash
# Use this script only in the container, not in the image. Current user must be not root

composer install -d "${_CI_IMAGE_APP_DIR}" --no-interaction --no-ansi --no-progress --no-suggest
