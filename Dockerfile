# Use a base image with OpenJDK and Maven to build the application
FROM openjdk:22-oracle

# Set the working directory
WORKDIR /app

# Copy the compiled JAR file into the container
COPY target/inventoryapp.jar app.jar

# Expose the port your application runs on
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "app.jar"]

# # Set the working directory in the container
# WORKDIR /app

# # Copy the Maven build file
# COPY pom.xml .

# # Copy the Maven wrapper files
# COPY mvnw .
# COPY .mvn .mvn

# # Download dependencies and package the application
# RUN ./mvnw dependency:go-offline
# RUN ./mvnw package -DskipTests

# # Copy the packaged JAR file into the image
# COPY target/*.jar app.jar

# # Start a new stage for the runtime image
# FROM openjdk:11-jre-slim

# # Set the working directory
# WORKDIR /app

# # Copy the packaged JAR file from the build stage
# COPY --from=build /app/app.jar .

# # Expose the port your application runs on
# EXPOSE 8001

# # Command to run the application
# CMD ["java", "-jar", "app.jar"]
