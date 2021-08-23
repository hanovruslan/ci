#!/usr/bin/env bash
# shellcheck disable=SC2086

apt update \
&& apt install -y ${PHPCLI_PACKAGE_APT}
