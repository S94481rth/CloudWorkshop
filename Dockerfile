# Use official Node.js image as base
FROM node:14-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json (if available) to the container
COPY package*.json ./

# Install Node.js dependencies
RUN npm install

# Copy all application files to the container
COPY . .

# Expose the port that your Node.js application listens on
EXPOSE 3000

# Command to start the Node.js application
CMD ["node", "index.js"]
