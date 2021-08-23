#!/usr/bin/env bash
# shellcheck disable=SC2086

pecl install apcu mcrypt xdebug \
&& echo instantclient,${INSTANTCLIENT_PATH} | pecl install oci8-2.2.0
