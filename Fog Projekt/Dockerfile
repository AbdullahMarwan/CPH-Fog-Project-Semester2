FROM maven:3.6.0-jdk-11-slim AS mavenbuild
WORKDIR /home/app
COPY pom.xml /home/app/pom.xml
COPY src /home/app/src

#RUN mvn -v -X -f pom.xml clean package - DEBUG
RUN mvn -f pom.xml clean package

# Tomcat stage
FROM tomcat:9.0.70-jdk11 as tomcatbuild

COPY --from=mavenbuild /home/app/target/fog-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/

EXPOSE 8080