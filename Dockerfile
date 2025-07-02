# Use official NGINX base image
FROM nginx:alpine

# Copy custom index.html to NGINX default HTML directory
COPY index.html /usr/share/nginx/html/index.html
