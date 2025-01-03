# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Build the application using Gradle
RUN ./gradlew build --no-daemon

# Expose the application port
EXPOSE 8080

# Run the application
CMD ["java", "-jar", "build/libs/demo-gradle-0.0.1-SNAPSHOT.jar"]
