# Use the official Ubuntu base image
FROM ubuntu:latest

# Install Nginx
RUN apt-get update && apt-get install -y nginx && rm -rf /var/lib/apt/lists/*

# Copy the hello.html file to the Nginx default directory
COPY hello.html /var/www/html/

# Expose port 80
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
