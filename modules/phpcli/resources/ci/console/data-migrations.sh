#!/bin/bash -x
# Use this script only in the container, not in the image. Current user must be not root

composer run -d "${_CI_IMAGE_APP_DIR}" \
  console doctrine:migrations:migrate -- -n --query-time
