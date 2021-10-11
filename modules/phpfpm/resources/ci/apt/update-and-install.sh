#!/bin/bash -x
# shellcheck disable=SC2086

apt update \
&& apt install -y ${PHPFPM_PACKAGE_APT}
