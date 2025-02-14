FROM amazoncorretto:17
# FROM openjdk:17-jdk
ARG JAR_FILE=build/libs/*.jar

COPY ${JAR_FILE} cicdtest.jar
# COPY build/libs/*.jar cicdtest.jar
ENTRYPOINT ["java","-jar","/cicdtest.jar"]

RUN ln -snf /usr/share/zoneinfo/Asia/Seoul /etc/localtime