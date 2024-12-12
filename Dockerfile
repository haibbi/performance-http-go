# Use the official Go image as a base image
FROM golang:1.23

# Set the working directory inside the container
WORKDIR /app

# Copy go.mod and go.sum files to the working directory
COPY go.mod go.sum ./

# Download the dependencies
RUN go mod download

# Copy the rest of the application code
COPY . .

# Build the application
RUN go build -o main .

# Expose the port that the application runs on
EXPOSE 8080

# Run the application
CMD ["./main"]
