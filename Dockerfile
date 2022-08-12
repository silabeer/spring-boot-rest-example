FROM openjdk:8-jdk-alpine
VOLUME /tmp

ARG JAR_FILE
ADD target/spring-boot-rest-example-2.6.3.0.jar app.jar

ENV JAR_OPTS=""
ENV JAVA_OPTS=""
ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar $JAR_OPTS