Docker NGINX Repo

This repository contains a simple setup to build and run a custom NGINX Docker image on Debian.
🚀 Prerequisites

Before proceeding, make sure you have:

    A configured Debian system and please refer https://www.debian.org/distrib/

    Docker installed via the official Docker APT repository and please refer https://docs.docker.com/engine/install/debian/#install-using-the-repository

🛠️ Setup Instructions

Follow the steps below to clone the repo, build the Docker image, and run it:
1. Clone the Repository

git clone https://github.com/satheeshpolu/docker-nginx-repo
cd docker-nginx-repo

2. Pull the Latest Changes

git pull

3. Build the Docker Image

docker build -t nginx:2.0.0 .

4. Verify the Image Exists

docker images

5. Run the Docker Container

Replace ae881d62fea1 with your image ID (from the previous step) if needed:

docker run -d -p 8080:80 ae881d62fea1

6. Check Running Containers

docker ps

7. Access the Web Server

Open your browser and navigate to:

http://localhost:8080/

    🔧 Note: If the container is mapped to a different port, adjust the URL accordingly.

🧼 Cleanup (Optional)

To stop and remove the container:

docker stop <container_id>
docker rm <container_id>

To remove the image:

docker rmi nginx:2.0.0

📄 License

MIT 
