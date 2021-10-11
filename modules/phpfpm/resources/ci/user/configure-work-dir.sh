#!/usr/bin/env bash

mkdir -p "${_CI_IMAGE_WORK_DIR}" \
&& chown -R "${_CI_RUNTIME_USER}:" "${_CI_IMAGE_WORK_DIR}"
