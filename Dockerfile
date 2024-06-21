# Use an OpenJDK base image
FROM openjdk:17-jdk-alpine

# Setting the working directory in the container
WORKDIR /app

# Copy the JAR file from the host machine to the container
COPY /var/lib/jenkins/workspace/demorun@2/target/spring-petclinic-3.3.0-SNAPSHOT.jar .


# Expose the port your application runs on
EXPOSE 8000

# Set the entry point to run the JAR file
ENTRYPOINT ["java", "-jar", "spring-petclinic-3.3.0-SNAPSHOT.jar"]