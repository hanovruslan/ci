#!/usr/bin/env bash
# Use this script only in the container, not in the image. Current user must be not root

mkdir -p "${_CI_IMAGE_ARTIFACT_DIR}" \
&& chown -R "${_CI_RUNTIME_USER}:" "${_CI_IMAGE_ARTIFACT_DIR}" \
&& chmod 755 "${_CI_IMAGE_ARTIFACT_DIR}"
