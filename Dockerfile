FROM openjdk:8-jre-alpine

RUN mkdir -p /opt/akka
WORKDIR /opt/akka

COPY ./target/scala-2.12/akka-http-service-assembly-0.1.jar ./

ENTRYPOINT ["java","-jar", "akka-http-service-assembly-0.1.jar"]

