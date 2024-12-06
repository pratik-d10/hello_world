# Use the official NGINX image from the Docker Hub
FROM nginx:alpine

# Copy the hello.txt file to the default NGINX html directory
COPY hello.txt /usr/share/nginx/html/

# Expose port 80 to the outside world
EXPOSE 80

# Start NGINX when the container launches
CMD ["nginx", "-g", "daemon off;"]
