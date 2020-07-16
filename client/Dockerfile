FROM adoptopenjdk/openjdk11:alpine-jre
RUN apk --no-cache add netcat-openbsd
WORKDIR /usr/app
ENV URI $URI
ENV PROFILE $PROFILE
ARG APPJAR=target/*.jar
COPY ${APPJAR} app.jar
COPY entrypoint.sh .
EXPOSE 8080
ENTRYPOINT ["sh", "/usr/app/entrypoint.sh"]