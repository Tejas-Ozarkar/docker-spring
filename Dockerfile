

FROM openjdk:8-alpine

EXPOSE 8080
ARG JAR_FILE=target/demo-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} demo.jar

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","demo.jar"]