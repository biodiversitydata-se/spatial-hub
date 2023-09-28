FROM tomcat:9.0-jdk11-temurin

ENV TZ=Europe/Stockholm

RUN mkdir -p /data/spatial-hub/config

COPY sbdi/data/config/menu-config.json /data/spatial-hub/config/menu-config.json
COPY sbdi/data/config/view-config.json /data/spatial-hub/config/view-config.json

COPY build/libs/spatial-hub-*-plain.war $CATALINA_HOME/webapps/ROOT.war
