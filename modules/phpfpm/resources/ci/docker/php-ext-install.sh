#!/bin/bash -x
# shellcheck disable=SC2086

docker-php-ext-install ${PHPFPM_DOCKER_EXT_PACKAGES}
