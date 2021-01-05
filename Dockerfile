#
# Build stage
#
FROM maven:3.6.0-jdk-11-slim AS build
COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean package

#
# Package stage
#
FROM openjdk:11-jre-slim
COPY --from=build /home/app/target/app-0.0.1-SNAPSHOT.jar /tmp/app.jar
RUN cd tmp/; ls
EXPOSE 8080
ENTRYPOINT ["java","-jar","/tmp/app.jar"]