#!/bin/bash -x
# shellcheck disable=SC2086

sed -i 's/user = www-data/user = '${_CI_RUNTIME_USER}'/' /usr/local/etc/php-fpm.d/www.conf \
&& sed -i 's/group = www-data/group = '${_CI_RUNTIME_USER}'/' /usr/local/etc/php-fpm.d/www.conf \
