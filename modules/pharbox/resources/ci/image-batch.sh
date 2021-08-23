#!/usr/bin/env sh

mkdir -p "${_CI_IMAGE_LOCAL_BIN_DIR}" \
  && curl -sSL "${PHARBOX_PATH}/${PHARBOX_VERSION}/box.phar" > "${_CI_IMAGE_LOCAL_BIN_DIR}/pharbox" \
  && chmod 755 "${_CI_IMAGE_LOCAL_BIN_DIR}/pharbox"
