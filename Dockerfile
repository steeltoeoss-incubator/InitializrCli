# FROM alpine:3.14
# RUN apk add \
#     httpie \
#     py3-setuptools
# COPY ./keep_alive /usr/local/bin
# COPY ./README.md .
# CMD keep_alive
FROM debian:10
ARG DEBIAN_FRONTEND=noninteractive
RUN apt update
RUN apt install -y \
        fish \
        httpie
COPY src/ /
COPY README.md /
CMD stay_alive
