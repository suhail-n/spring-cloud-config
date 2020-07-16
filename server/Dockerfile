FROM adoptopenjdk/maven-openjdk11 AS MAVEN_BUILDER
WORKDIR /usr/app/build
COPY pom.xml .
RUN mvn dependency:go-offline
COPY src/ /usr/app/build/src
RUN mvn package

FROM adoptopenjdk:11-jre-hotspot
ENV GITHUB_URI $GITHUB_URI
ENV CONFIG_PATH $CONFIG_PATH
WORKDIR /usr/app
COPY --from=MAVEN_BUILDER /usr/app/build/target/*.jar app.jar
EXPOSE 8888
ENTRYPOINT [ "java", "-jar", "app.jar" ]