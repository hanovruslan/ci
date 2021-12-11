#!/bin/bash -x
# shellcheck disable=SC1090

if_file_exists () {
    ls "${1}"
} 2>/dev/null 1>&2

cd "${_CI_IMAGE_CI_DIR}" || exit 1

files=( \
    "${_CI_IMAGE_CI_DIR}/user/add.sh" \
    "${_CI_IMAGE_CI_DIR}/user/configure-work-dir.sh" \
    "${_CI_IMAGE_CI_DIR}/user/configure-artifact.sh" \
)

for file in "${files[@]}"
do
    if if_file_exists "${file}"
    then . "${file}"
    else true
    fi
done
