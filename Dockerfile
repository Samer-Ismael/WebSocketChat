# Use a base image with Java and a JRE
FROM openjdk

# Set the working directory within the container
WORKDIR /app

# Copy the Spring Boot JAR file into the container
COPY target/Chat-0.0.1-SNAPSHOT.jar ./app.jar

# Expose the port that your Spring Boot application listens on
EXPOSE 8080

# Define the command to run your Spring Boot application
CMD ["java", "-jar", "app.jar"]
