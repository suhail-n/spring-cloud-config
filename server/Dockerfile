FROM adoptopenjdk:11-jre-hotspot
WORKDIR /usr/app
ENV GITHUB_URI $GITHUB_URI
ENV CONFIG_PATH $CONFIG_PATH
ARG APPJAR=target/*.jar
COPY ${APPJAR} app.jar
EXPOSE 8888
ENTRYPOINT [ "java", "-jar", "app.jar" ]