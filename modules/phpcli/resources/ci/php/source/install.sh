#!/usr/bin/env bash

( \
cd /tmp \
&& git clone https://github.com/nikic/scalar_objects.git \
&& cd scalar_objects \
&& phpize \
&& ./configure \
&& make \
&& make install \
&& echo extension=scalar_objects.so >> "${PHP_INI_DIR}/conf.d/scalar_objects.ini" \
)
