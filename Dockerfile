FROM busybox:latest

# Create web directory
WORKDIR /www

# Copy site
COPY index.html .

# Expose port
EXPOSE 80

# Run BusyBox HTTP server
CMD ["httpd", "-f", "-p", "80"]

