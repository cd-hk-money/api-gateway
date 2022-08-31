FROM openjdk:11-jre-slim
ENV APP_HOME=/usr/app/
WORKDIR $APP_HOME
COPY build/libs/*.jar api-gateway-1.0-SNAPSHOT.jar
EXPOSE 8000
CMD ["java", "-jar", "api-gateway-1.0-SNAPSHOT.jar"]