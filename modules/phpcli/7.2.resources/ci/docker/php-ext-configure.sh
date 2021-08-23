#!/usr/bin/env bash

docker-php-ext-configure gd --with-gd --with-png-dir \
&& docker-php-ext-configure opcache --enable-opcache
