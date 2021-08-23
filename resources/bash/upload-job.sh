#!/usr/bin/env sh
# shellcheck disable=SC2002

dotenv="${PWD}/.gitlab-ci-build.env"
temp_tag="gitlab_ci_build_${_CI_JOB_MODULE}"

cat "${dotenv}" | \
xargs -n 1 docker tag "${temp_tag}" \
&& cat "${dotenv}" | \
xargs -n 1 docker push \
&& cat "${dotenv}" | \
xargs -n 1 docker rmi -f \
&& docker rmi -f "${temp_tag}"
