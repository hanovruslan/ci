#!/bin/bash -x
# shellcheck disable=SC1090

if_file_exists () {
    ls "${1}"
} 2>/dev/null 1>&2

cd "${_CI_IMAGE_CI_DIR}" || exit 1

files=( \
    "${_CI_IMAGE_CI_DIR}/php/pecl/install.sh" \
    "${_CI_IMAGE_CI_DIR}/docker/php-ext-enable.sh" \
    "${_CI_IMAGE_CI_DIR}/docker/php-ext-configure.sh" \
    "${_CI_IMAGE_CI_DIR}/docker/php-ext-install.sh"
)

for file in "${files[@]}"
do
    if if_file_exists "${file}"
    then . "${file}"
    else true
    fi
done
