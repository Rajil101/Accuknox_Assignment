# Use an official Debian base image
FROM debian:bullseye-slim

# Install dependencies
RUN apt-get update && \
    apt-get install -y cowsay fortune netcat && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set PATH to include /usr/games
ENV PATH="/usr/games:${PATH}"

# Set the working directory
WORKDIR /usr/src/app

# Copy the Wisecow.sh script into the container
COPY wisecow.sh .

# Make the script executable
RUN chmod +x wisecow.sh

# Expose the port the script will listen on
EXPOSE 4499

# Define the command to run the script
CMD ["./wisecow.sh"]
