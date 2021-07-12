FROM debian:10
ARG DEBIAN_FRONTEND=noninteractive
RUN apt update
RUN apt install -y \
        cowsay \
        httpie \
        jq \
        vim
COPY src/ /
CMD stay_alive
