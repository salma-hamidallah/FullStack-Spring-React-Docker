FROM openjdk:17-jdk-slim
# the JAR file path
ARG JAR_FILE=target/*.jar

# Copy the JAR file from the build context into the Docker image
COPY ${JAR_FILE} application.jar

EXPOSE 8080

# Set the default command to run the Java application
ENTRYPOINT ["java", "-Xmx2048M", "-jar",  "-Dspring.profiles.active=prod", "/application.jar"]