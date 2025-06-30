FROM maven:3.8.4-openjdk-17 as builder
WORKDIR /test_jacoco
COPY . .
RUN mvn package -s settings.xml -f pom.xml
