Project Title:


Flask DevOps CI/CD Project

A simple Flask application that uses a CI/CD pipeline with Docker and GitHub Actions to automatically deploy to Docker Hub.


Project Objective:

This project is created for hands-on learning of key DevOps concepts:

Source Control: Managing code versions with Git and GitHub.

Containerization: Packaging the application into a portable Docker image.

Automated Pipeline: Implementing CI/CD (Continuous Integration / Continuous Deployment) using GitHub Actions.

Cloud Deployment: Deploying the Docker container on an AWS EC2 server.


File Structure


├── .github/
│   └── workflows/
│       └── build-and-push.yml  # GitHub Actions pipeline
├── app.py                      # Main Flask application
├── requirements.txt            # Python package dependencies
└── Dockerfile                  # Instructions for building the Docker image



Getting Started
To run this project locally, ensure you have Git, Docker Desktop, and WSL installed on your system.


1. Clone the project:

git clone https://github.com/<your-username>/<your-repo-name>.git
cd <your-repo-name>
2. Run the application locally (using Docker):

First, build the image:

docker build -t <your_docker_hub_username>/simple-devops-app:latest .
Then, run the container:

docker run -p 5000:5000 <your_docker_hub_username>/simple-devops-app:latest
You can view the application in your browser at http://localhost:5000.

CI/CD Pipeline
This project includes an automated CI/CD pipeline powered by GitHub Actions. Whenever new code is pushed to the main branch, the pipeline will:

Checkout the code from the repository.

Build a new Docker image.

Push the image to Docker Hub.

Important: For the pipeline to work, you must add two secrets to your GitHub repository settings: DOCKER_USERNAME and DOCKER_HUB_TOKEN.


Contact
For any questions or collaboration, feel free to reach out:
Md Mazid Hossain
📩 Email: mazid.info67@gmail.com
