FROM alpine:3

ARG TARGETPLATFORM
ARG BUILDPLATFORM
ARG V2RAY_VERSION=4.43.0

WORKDIR /usr/local/bin

ADD build.sh .
ADD config.jsonc /etc/v2ray/

RUN ./build.sh 
ENTRYPOINT ["v2ray", "-c", "/etc/v2ray/config.jsonc"]
