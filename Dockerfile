# Copyright (c) 2022 FEROX YT EIRL, www.ferox.yt <devops@ferox.yt>
# Copyright (c) 2022 Jérémy WALTHER <jeremy.walther@golflima.net>
# See <https://github.com/frxyt/docker-cd-db> for details.

FROM alpine:latest
LABEL maintainer="Jérémy WALTHER <jeremy@ferox.yt>"

RUN set -ex; \
    apk add --no-cache \
        bash \
        ca-certificates \
        curl \
        git \
        mysql-client \
        postgresql-client;

RUN set -ex; \
    cat /etc/alpine-release; \
    bash --version; \
    curl --version; \
    git --version; \
    mysql --version; \
    mysqldump --version; \
    psql --version; \
    pg_dump --version;
WORKDIR /work

ENTRYPOINT [ "/bin/bash", "-lc" ]
CMD [ "bash" ]