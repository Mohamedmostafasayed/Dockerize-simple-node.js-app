# Use the official Node.js 14 Alpine image as the base image
FROM node:14-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the application code to the working directory
COPY . .

# Expose the port on which your app will run (replace 3000 with your app's port)
EXPOSE 3000
ENV NAME node-app

# Command to run your application (replace "index.js" with your entry point)
CMD ["node", "index.js"]
