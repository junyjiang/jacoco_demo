FROM maven:3.8.4-openjdk-17 as builder
RUN mvn package  -s /jacoco_demo/settings.xml -f /jacoco_demo/pom.xml
