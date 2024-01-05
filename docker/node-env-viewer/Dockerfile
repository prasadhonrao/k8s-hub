# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the server.js file to the container
COPY server.js .

# Expose the port the server will listen on
EXPOSE 3000

# Define the command to run when the container starts
CMD ["node", "server.js"]
