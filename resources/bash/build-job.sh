#!/usr/bin/env sh
# shellcheck disable=SC2002
# shellcheck disable=SC2046
# shellcheck disable=SC2086
# shellcheck disable=SC2140

dotenv="${PWD}/.gitlab-ci.env"
upload_dotenv="${PWD}/.gitlab-ci-build.env"
temp_tag="gitlab_ci_build_${_CI_JOB_MODULE}"

cp ${_CI_JOB_SSH_DIR}/id_rsa* ${PWD}/modules/${_CI_JOB_MODULE}/ \
&& docker rmi -f "${temp_tag}" \
&& docker build --no-cache "modules/${_CI_JOB_MODULE}" \
  --tag "${temp_tag}" \
  $(cat "${dotenv}" | awk '{sub(/=.*/, ""); print}'|xargs -n 1 echo "--build-arg"|tr '\n' ' ') \
&& rm -f "${upload_dotenv}" \
&& ( \
  echo "${CI_REGISTRY_IMAGE}/${_CI_JOB_MODULE}:${_CI_JOB_VERSION_PATCH}" \
  && echo "${CI_REGISTRY_IMAGE}/${_CI_JOB_MODULE}:${_CI_JOB_VERSION_MINOR}" \
) > "${upload_dotenv}"
