FROM adoptopenjdk/maven-openjdk11 AS MAVEN_BUILDER
WORKDIR /usr/app
COPY . .
RUN mvn clean package

FROM adoptopenjdk/openjdk11:alpine-jre
RUN apk --no-cache add netcat-openbsd
ENV URI $URI
ENV PROFILE $PROFILE
WORKDIR /usr/app
COPY --from=MAVEN_BUILDER /usr/app/target/*.jar app.jar
COPY entrypoint.sh .
EXPOSE 8080
ENTRYPOINT ["sh", "/usr/app/entrypoint.sh"]