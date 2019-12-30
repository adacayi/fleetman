FROM openjdk:8u171-jdk-alpine
WORKDIR /usr/local/bin
COPY target/fleetman*.jar fleetman.jar
CMD ["java","-jar","-Dspring.profiles.active=docker-demo","fleetman.jar"]
LABEL maintainer="Abdullah Sanver a_sanver@hotmail.com"
EXPOSE 8080
