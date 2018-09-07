FROM openjdk:8-jdk-alpine
VOLUME /tmp
EXPOSE 8080
ARG JAR_FILE=target/ApiAssessment-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} api.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","api.jar"]



