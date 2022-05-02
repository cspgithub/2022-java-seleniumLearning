FROM openjdk:11
FROM maven:alpine

WORKDIR /app
ADD demo/pom.xml /app
RUN  mvn verify clean

CMD  mvn -f demo/pom.xml test


