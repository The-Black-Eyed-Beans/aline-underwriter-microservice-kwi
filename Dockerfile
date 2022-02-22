FROM openjdk:11.0.13-jre-slim-buster
ARG JAR_FILE=underwriter-microservice/target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]