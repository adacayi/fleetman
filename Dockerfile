FROM tomcat:8.5.47-jdk8-openjdk-slim
LABEL maintainer="Abdullah Sanver a_sanver@hotmail.com"
RUN rm -rf webapps/*
COPY target/fleetman*.war $CATALINA_HOME/webapps/ROOT.war
ENV JAVA_OPTS="-Dspring.profiles.active=docker-demo"
CMD ["catalina.sh","run"]