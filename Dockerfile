# Use OpenJDK 17 base image
FROM eclipse-temurin:17-jdk

# Set working directory in the container
WORKDIR /app

# Copy all project files into the container
COPY . .

# Build the application using Maven
RUN ./mvnw clean package -DskipTests

# Run the JAR file
CMD ["java", "-jar", "target/*.jar"]
