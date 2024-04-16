# Use an official Nginx runtime as a parent image
FROM nginx:alpine

# Copy the static HTML files into Nginx's public directory
COPY . /usr/share/nginx/html

# Expose port 80 for the app
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]