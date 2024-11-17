FROM alpine:3.20


ENV PATH /google-cloud-sdk/bin:$PATH

RUN apk --no-cache add \
        curl \
        python3 \
        py-crcmod \
        py3-pip \
        libc-dev \ 
        libmagic \
        gcc \
        g++ \
        bash \
        make \
        libc6-compat \
        openssh-client \
        mariadb-client \
        git \
        gnupg \
        unzip

RUN apk --update add mysql-client bash python3 curl aws-cli

ADD ./rootfs/ /

ENTRYPOINT ["/mysql2storage"]
