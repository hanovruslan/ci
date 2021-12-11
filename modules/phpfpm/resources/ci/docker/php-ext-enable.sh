#!/bin/bash -x
# shellcheck disable=SC2086

docker-php-ext-enable ${PHPFPM_PECL_PACKAGES}
