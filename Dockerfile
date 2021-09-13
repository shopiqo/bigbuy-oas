FROM node:14.16.1-alpine3.10

MAINTAINER Igor Ermentraut <ie@efsa.io>

ENV SWAGGER_CLI_VERSION 4.0.4

WORKDIR /app

COPY ./docker-entrypoint.sh /

RUN \
    set -xe \
    && npm install -g swagger-cli@${SWAGGER_CLI_VERSION} \
    && chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["--help"]
