#!/usr/bin/env bash

docker-php-ext-configure gd \
&& docker-php-ext-configure opcache --enable-opcache
