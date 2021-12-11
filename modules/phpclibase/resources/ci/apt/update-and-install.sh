#!/bin/bash
# shellcheck disable=SC2086

apt update \
&& apt install -y ${PHPCLI_APT_PACKAGES}
