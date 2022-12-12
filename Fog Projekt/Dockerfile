#FROM maven:3.6.3-jdk-11 AS build
#FROM maven:3.6.0-jdk-11-slim AS build
#FROM maven:3.6-jdk-11 as maven_build
#FROM adoptopenjdk/openjdk11:latest
#FROM maven:3.8.6-openjdk-11-slim
FROM tomcat:10.1.4-jdk11

RUN mkdir -p /app
WORKDIR /app
COPY pom.xml /app
COPY src /app/src

#RUN mvn clean package
#RUN mvn -v clean install

ADD ./target/fog-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/
#ADD ./target/fog-1.0-SNAPSHOT.war $CATALINA_HOME/webapps/

EXPOSE 8080

#CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]
#CMD chmod +x /usr/local/tomcat/bin/catalina.sh
#CMD ["catalina.sh", "run"]

#docker-compose down && docker-compose build --no-cache && docker-compose up