#!/usr/bin/env bash

envsubst < "${_CI_IMAGE_CI_DIR}/user/.npmrc.config" > "${_CI_RUNTIME_HOME}/.npmrc"
