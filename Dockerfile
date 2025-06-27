FROM maven:3.8.4-openjdk-17 as builder
RUN cd /jacoco_test/ && \
    mvn package -s /jacoco_test/settings.xml -f /jacoco_test/pom.xml