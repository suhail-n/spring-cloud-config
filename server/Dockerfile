FROM adoptopenjdk/maven-openjdk11 AS MAVEN_BUILDER
WORKDIR /usr/app
COPY . .
RUN mvn clean package

FROM adoptopenjdk:11-jre-hotspot
ENV GITHUB_URI $GITHUB_URI
ENV CONFIG_PATH $CONFIG_PATH
WORKDIR /usr/app
COPY --from=MAVEN_BUILDER /usr/app/target/*.jar app.jar
EXPOSE 8888
ENTRYPOINT [ "java", "-jar", "app.jar" ]