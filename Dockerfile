FROM maven:3.8.4-openjdk-17 as builder
RUN cd /test_jacoco/ && \
    mvn package -s /test_jacoco/settings.xml -f /test_jacoco/pom.xml