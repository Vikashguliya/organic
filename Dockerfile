# Use official Nginx image as base
FROM nginx:alpine

# Set the working directory
WORKDIR /usr/share/nginx/html

# Remove the default nginx index.html
RUN rm -rf ./*

# Copy your static files into the Nginx container
COPY . .

# Expose the port Nginx is running on
EXPOSE 80


