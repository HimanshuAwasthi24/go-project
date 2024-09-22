# Stage 1: Build the Go app
FROM golang:1.23-alpine AS build

# Set the working directory
WORKDIR /app

# Copy the Go modules manifest to enable dependency caching
COPY go.mod ./

# Download necessary Go modules
RUN go mod download

# Copy the source code
COPY . .

# Build the Go app
RUN go build -o main

# Stage 2: Run the Go app in a lightweight container
FROM alpine:latest

# Set the working directory
WORKDIR /app

# Copy the Go binary from the build stage
COPY --from=build /app/main .

# Expose port 3100 for the HTTP server
EXPOSE 8080

# Set the entrypoint to run the binary
ENTRYPOINT ["./main"]
