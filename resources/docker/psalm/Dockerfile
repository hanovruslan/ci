# deprecated
ARG PHP_VERSION="7.1"
FROM php:${PHP_VERSION}-cli-alpine
ARG PSALM_VERSION="3.12.2"
ENV PSALM_CONFIG="resources/psalm/config.xml"
RUN mkdir -p /etc/share/psalm && \
    curl -sSL https://github.com/psalm/phar/archive/${PSALM_VERSION}.tar.gz \
    | tar -z -x -v -O phar-${PSALM_VERSION}/psalm.phar > /etc/share/psalm/psalm \
    && chmod 755 /etc/share/psalm/psalm
COPY etc/share/ /etc/share
WORKDIR /app
ENTRYPOINT ["/etc/share/psalm/entrypoint.sh"]
CMD []
