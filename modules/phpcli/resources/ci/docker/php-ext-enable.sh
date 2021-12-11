#!/bin/bash -x
# shellcheck disable=SC2086

docker-php-ext-enable ${PHPCLI_PECL_PACKAGES}
