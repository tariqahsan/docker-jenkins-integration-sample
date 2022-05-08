# start with the base image containing the Java runtime
FROM openjdk:8
# make port 8080 available for the world outside the docker container
EXPOSE 8080
ADD target/docker-jenkins-integration-sample.jar docker-jenkins-integration-sample.jar
# run the jar file
ENTRYPOINT ["java", "-jar", "/docker-jenkins-integration-sample.jar"]