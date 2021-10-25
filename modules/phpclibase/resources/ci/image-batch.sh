#!/bin/bash -x
# shellcheck disable=SC1090

if_file_exists () {
    ls "${1}"
} 2>/dev/null 1>&2

cd "${_CI_IMAGE_CI_DIR}" || exit 1

files=( \
    "${_CI_IMAGE_CI_DIR}/apt/update-and-install.sh" \
)

for file in "${files[@]}"
do
    if_file_exists "${file}" \
    && . "${file}"
done