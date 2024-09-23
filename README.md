# Let's create a README.md file with the provided optimized content.

content = """
# Go Project: Containerized with CI/CD using Jenkins

A simple Go-based project that is containerized and includes a Jenkins CI/CD pipeline for automated deployment.

## Prerequisites

- Ensure **Docker** is installed on your machine. You can install it using the following commands:
  \\\\`\\\\`bash
  sudo apt update
  sudo apt install docker.io -y
  sudo usermod -aG docker $USER
  sudo systemctl start docker
  sudo systemctl enable docker
  \\\\`\\\\`

  > **Note:** You may need to log out and log back in for the Docker permissions to take effect.

## Steps to Run

### 1. Clone the Repository
   Clone the Go project repository from GitHub:
   \\\\`\\\\`bash
   git clone https://github.com/HimanshuAwasthi24/go-project.git
   cd go-project
   \\\\`\\\\`

### 2. Build the Docker Image
   Build the Docker image from the project directory:
   \\\\`\\\\`bash
   docker build -t <docker_hub_username>/go-project:<tag> .
   \\\\`\\\\`
   Replace `<docker_hub_username>` and `<tag>` with your Docker Hub username and preferred tag.

### 3. Run the Docker Container
   Run the container and map it to port `8080`:
   \\\\`\\\\`bash
   docker run -dp 8080:8080 <docker_hub_username>/go-project:<tag>
   \\\\`\\\\`
   The application should now be running on `localhost:8080`.

### 4. Push the Image to Docker Hub
   After building and testing the image locally, push it to Docker Hub:
   \\\\`\\\\`bash
   docker push <docker_hub_username>/go-project:<tag>
   \\\\`\\\\`
   Make sure you are logged in to Docker Hub with:
   \\\\`\\\\`bash
   docker login
   \\\\`\\\\`

## CI/CD with Jenkins

This project is set up for Continuous Integration and Continuous Deployment (CI/CD) using **Jenkins**. To enable this:

1. Set up a Jenkins pipeline to monitor this repository.
2. Configure the pipeline to:
   - Build the Docker image.
   - Run tests.
   - Push the Docker image to Docker Hub.
   - Deploy the container on your server.

## Additional Information

- Port: `8080`
- Docker Hub: [Docker Hub Account](https://hub.docker.com/)
- Jenkins Documentation: [Jenkins.io](https://www.jenkins.io/doc/)
"""

# Writing the content to a README.md file
with open("/mnt/data/README.md", "w") as file:
    file.write(content)

"/mnt/data/README.md"
