# Install Java 8
FROM amazoncorretto:8

# from README.md
EXPOSE 8080

# Working directory
WORKDIR /usr/src/app

# Copy source code
COPY . .

# Build project
RUN ./mvnw package

CMD java -jar ./target/docker-example-1.1.3.jar
