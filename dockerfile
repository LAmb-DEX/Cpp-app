# Base image with C++ development tools
FROM ubuntu:22.04

# Install necessary dependencies
RUN apt-get update && apt-get install -y \
    g++ cmake git wget && \
    rm -rf /var/lib/apt/lists/*

# Set the working directory and copy the application files
WORKDIR /app
COPY app/ /app/

# Build the application
RUN cmake -Bbuild -H. && cmake --build build

# Expose port 8080
EXPOSE 8080

# Command to run the application
CMD ["./build/SimpleCppApp"]
