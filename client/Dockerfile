FROM adoptopenjdk/maven-openjdk11 AS MAVEN_BUILDER
WORKDIR /usr/app/build
COPY pom.xml .
RUN mvn dependency:go-offline
COPY src/ /usr/app/build/src
RUN mvn package

FROM adoptopenjdk/openjdk11:alpine-jre
RUN apk --no-cache add netcat-openbsd
ENV URI $URI
ENV PROFILE $PROFILE
WORKDIR /usr/app
COPY --from=MAVEN_BUILDER /usr/app/build/target/*.jar app.jar
COPY entrypoint.sh .
EXPOSE 8080
ENTRYPOINT ["sh", "/usr/app/entrypoint.sh"]
