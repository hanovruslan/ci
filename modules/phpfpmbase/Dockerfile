ARG BASE_PHP_VERSION

FROM php:${BASE_PHP_VERSION}-fpm-buster

ARG _CI_IMAGE_CI_DIR
ARG PHPFPM_APT_PACKAGES

ENV _CI_IMAGE_CI_DIR=${_CI_IMAGE_CI_DIR}
ENV PHPFPM_APT_PACKAGES=${PHPFPM_APT_PACKAGES}

COPY resources/ /

RUN bash -x "${_CI_IMAGE_CI_DIR}/image-batch.sh"
