# Use the official Nginx base image
FROM nginx:alpine

# Copy custom configuration file to the appropriate location
COPY nginx.conf /etc/nginx/nginx.conf

# Copy website content (if any) to the appropriate location
COPY ./html /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Command to run Nginx
CMD ["nginx", "-g", "daemon off;"]