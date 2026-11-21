# Stage 1: Build the static website using Node.js
FROM node:22-alpine AS builder

# Set the working directory inside the builder container
WORKDIR /app

# Copy package files first to take advantage of Docker layer caching
COPY package*.json ./

# Install the exact dependencies from package-lock.json
RUN npm ci

# Copy website source files and styles
COPY src/ ./src/
COPY styles/ ./styles/

# Build all HTML pages into the dist directory
RUN npm run build

# Stage 2: Serve the built website using Nginx
FROM nginx:1.27-alpine

# Copy only the production build from the builder stage
COPY --from=builder /app/dist /usr/share/nginx/html

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
