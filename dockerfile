
# Use official Node.js image as base
FROM node:14

# Set working directory
WORKDIR /app/frontend

# Copy package.json and package-lock.json
COPY ./package*.json ./

# Install dependencies
RUN npm install

# Copy frontend source code
COPY . .

# Expose port 3000
EXPOSE 3000

# Command to run the frontend server
CMD ["npm", "start"]