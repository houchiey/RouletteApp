FROM node:22.2-alpine

RUN apk update && apk add git && apk add openssh && apk add sudo
RUN echo "node ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

ENTRYPOINT tail -f /dev/null