#!/usr/bin/env bash
# shellcheck disable=SC2086

apt update \
&& apt install -y ${PHPFPM_PACKAGE_APT}
