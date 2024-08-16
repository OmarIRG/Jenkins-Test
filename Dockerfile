# Use the official Nginx image as the base image
FROM nginx:alpine

# Copy the HTML file to the default Nginx web directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 to the outside world
EXPOSE 80

# Expose port 80 to the outside world
EXPOSE 3000

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
