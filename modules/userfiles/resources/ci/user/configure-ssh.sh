#!/usr/bin/env bash

mkdir -p "${_CI_RUNTIME_HOME}/.ssh" \
&& mv /id_rsa* "${_CI_RUNTIME_HOME}/.ssh/" \
&& envsubst < "${_CI_IMAGE_CI_DIR}/user/.ssh.config" > "${_CI_RUNTIME_HOME}/.ssh/config" \
&& chmod 644 "${_CI_RUNTIME_HOME}/.ssh/config" \
&& chmod 600 "${_CI_RUNTIME_HOME}/.ssh/id_rsa" \
&& chown -R "${_CI_RUNTIME_USER}:" "${_CI_RUNTIME_HOME}/.ssh"
