# Stage 1: Build
FROM maven:3.8.4-openjdk-8 AS build

# Set the working directory
WORKDIR /app

# Copy the Maven project files
COPY pom.xml ./
COPY src ./src

# Download dependencies and build the project
RUN mvn clean package -DskipTests

# Stage 2: Runtime
FROM openjdk:8-jre-slim

# Set the working directory
WORKDIR /app

# Copy the jar file from the build stage
COPY --from=build /app/target/helloworldapp.jar app.jar

# Expose the port that your application will run on
EXPOSE 8081

# Command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
