# Use a 32-bit Debian base image
FROM i386/debian:latest

# Set the working directory
WORKDIR /app

# Install necessary dependencies (modify as needed for your project)
RUN apt-get update && apt-get install -y \
    build-essential \
    gcc-multilib \
    g++-multilib \
    vim \
    && rm -rf /var/lib/apt/lists/*

# Copy the project files into the container
COPY . /app

# Set the entry point to a shell (or your build script)
ENTRYPOINT ["/bin/bash"]
