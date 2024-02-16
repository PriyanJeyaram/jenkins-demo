FROM openjdk
LABEL maintainer = "priyanj@hub.docker.com"
EXPOSE 8081
WORKDIR /app
COPY target/jenkins-demo.jar app/jenkins-demo.jar
ENTRYPOINT ["java", "-jar", "jenkins-demo.jar"]