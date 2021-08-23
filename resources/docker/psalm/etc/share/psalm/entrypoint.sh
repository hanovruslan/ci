#!/usr/bin/env sh

cd /app && \
cp /etc/share/psalm/psalm ./ && \
./psalm --config="${PSALM_CONFIG}" --no-progress -m "${@}" && \
rm psalm
