#!/usr/bin/env bash
# shellcheck disable=SC2086

pecl install apcu mcrypt redis xdebug
pecl install ${PHPFPM_PACKAGE_PECL}