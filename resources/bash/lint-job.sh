#!/usr/bin/env sh
# shellcheck disable=SC2044
# shellcheck disable=SC2086

DOCKER_REGISTRY_PATH=
#DOCKER_REGISTRY_PATH=nexus.itmo.ycloud:8443/
CI_PROJECT_DIR="${CI_PROJECT_DIR:=${PWD}}"

for image in $(find "${CI_PROJECT_DIR}/modules/"* -maxdepth 0 -type d)
do
    echo docker-lint "$(basename "${image}")"
    docker run --rm -v "${image}/Dockerfile:/tmp/Dockerfile" "${DOCKER_REGISTRY_PATH}rcjsuen/dockerfile-utils" lint /tmp/Dockerfile
done

for file in $( { find ${CI_PROJECT_DIR}/resources/bash/*.sh -maxdepth 0 -type f; find ${CI_PROJECT_DIR}/modules/**/*resources -type f -name "*.sh"; } )
do
    _file="$(basename ${file})"
    echo shell-lint ${file}
    docker run --rm -v "${file}:/mnt/${_file}" "${DOCKER_REGISTRY_PATH}koalaman/shellcheck:stable" "${_file}"
done
