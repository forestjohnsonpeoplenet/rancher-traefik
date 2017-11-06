FROM registry.devops.connectedfleet.io/rancher-tools:3.5.1
MAINTAINER Forest Johnson <fjohnson@peoplenetonline.com>

#Set environment
ENV SERVICE_NAME=traefik \
    SERVICE_USER=traefik \
    SERVICE_UID=10001 \
    SERVICE_GROUP=traefik \
    SERVICE_GID=10001 \
    SERVICE_ARCHIVE=/opt/traefik-rancher-tools.tgz

# Add files
ADD root /
RUN cd ${SERVICE_VOLUME} && \
    tar czvf ${SERVICE_ARCHIVE} * ; rm -rf ${SERVICE_VOLUME}/*
