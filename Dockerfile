# Use the lightweight Nginx Alpine image
FROM nginx:alpine

# Remove the default Nginx welcome page
RUN rm -rf /usr/share/nginx/html/*

# Copy the HTML file
COPY index.html /usr/share/nginx/html/index.html

# Copy the images folder (case sensitive!)
COPY images /usr/share/nginx/html/images

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]