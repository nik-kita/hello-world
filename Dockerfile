# Stage 1: Build the application using node:alpine
FROM node:alpine AS builder

WORKDIR /app

# Create the app.js file directly
RUN echo "const http = require('http');" > app.js && \
    echo "const server = http.createServer((req, res) => {" >> app.js && \
    echo "  res.statusCode = 200;" >> app.js && \
    echo "  res.setHeader('Content-Type', 'text/plain');" >> app.js && \
    echo "  res.end('Hello, World!');" >> app.js && \
    echo "});" >> app.js && \
    echo "server.listen(3000, () => {" >> app.js && \
    echo "  console.log('Server running at http://localhost:3000/');" >> app.js && \
    echo "});" >> app.js

# Stage 2: Use a minimal runtime image
FROM node:alpine

WORKDIR /app

# Copy the application from the builder stage
COPY --from=builder /app/app.js .

# Expose the application port
EXPOSE 3000

# Directly run the Node.js process
CMD ["node", "app.js"]