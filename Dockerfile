# Use an official lightweight Node.js runtime as the base image
FROM node:14-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy your HTML and CSS files into the container
COPY ./index.html ./index.html
COPY ./styles.css ./styles.css

# Expose a port (e.g., 80) for your web application
EXPOSE 80

# Define the command to run your web server
CMD ["npx", "http-server", "-p", "80"]
