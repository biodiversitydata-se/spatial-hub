FROM tomcat:9.0-jdk17-temurin

ENV TZ=Europe/Stockholm

RUN mkdir -p /data/spatial-hub/config \
  /data/spatial-hub/i18n \
  /data/spatial-hub/sessions \
  /data/ala/runtime/files

COPY sbdi/data/config/menu-config.json /data/spatial-hub/config/menu-config.json
COPY sbdi/data/config/view-config.json /data/spatial-hub/config/view-config.json

COPY build/libs/spatial-hub-*-plain.war $CATALINA_HOME/webapps/ROOT.war

ENV DOCKERIZE_VERSION=v0.9.3

RUN apt-get update \
    && apt-get install -y wget \
    && wget -O - https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz | tar xzf - -C /usr/local/bin \
    && apt-get autoremove -yqq --purge wget && rm -rf /var/lib/apt/lists/*
