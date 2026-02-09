# Use lightweight Nginx image
FROM nginx:alpine

# Remove default nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy your website files
COPY index.html /usr/share/nginx/html/index.html

# Expose port 8001
EXPOSE 8001

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
