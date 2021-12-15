#!/bin/bash -x

mkdir -p "${_CI_IMAGE_APP_DIR}" \
&& chown -R "${_CI_RUNTIME_USER}:" "${_CI_IMAGE_APP_DIR}"
