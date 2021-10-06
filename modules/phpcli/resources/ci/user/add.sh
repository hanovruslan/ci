#!/usr/bin/env bash

groupadd --gid "${_CI_RUNTIME_GID}" "${_CI_RUNTIME_USER}" \
&& useradd \
    --uid "${_CI_RUNTIME_UID}" \
    --gid "${_CI_RUNTIME_GID}" \
    --shell /bin/bash \
    --home-dir "${_CI_RUNTIME_HOME}" \
    --create-home "${_CI_RUNTIME_USER}"
