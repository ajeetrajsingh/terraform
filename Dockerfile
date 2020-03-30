# Maven build container 

FROM maven:3.5.2-jdk-8-alpine AS maven_build

COPY pom.xml /tmp/

WORKDIR /tmp/



#pull base image

FROM openjdk:8-jdk-alpine

#maintainer 
MAINTAINER ajeetraj0079@gmail.com
#expose port 8080
EXPOSE 8080

#default command
CMD java -jar /data/hello-world-0.1.0.jar

#copy hello world to docker image from builder image


