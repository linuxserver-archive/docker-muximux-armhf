FROM lsiobase/alpine.nginx.armhf:3.8

# set version label
ARG BUILD_DATE
ARG VERSION
LABEL build_version="Linuxserver.io version:- ${VERSION} Build-date:- ${BUILD_DATE}"
LABEL maintainer="sparklyballs"

# add local files
COPY root/ /

# ports and volumes
EXPOSE 80
VOLUME /config
