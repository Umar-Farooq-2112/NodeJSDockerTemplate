# Use the official Node.js 14 image as a base
FROM node:14

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all files from the current directory to the working directory inside the container
COPY . .

# Expose port 4000 to the outside world
EXPOSE 4000

# Command to run the application
CMD ["node", "src/index.js"]
