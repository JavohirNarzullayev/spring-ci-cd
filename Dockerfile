FROM openjdk:17-alpine
WORKDIR /opt/app
EXPOSE 8099
ARG APP_NAME="spring-boot-ci-cd"
ARG APP_VERSION="0.0.1"
ARG JAR_FILE="/build/libs/${APP_NAME}-${APP_VERSION}.jar"

COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar", "app.jar"]