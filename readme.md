**Azure DevOps Docker Pipeline Project**

This project demonstrates provisioning an Azure Container Registry (ACR), building a custom Docker image using NGINX, and automating the build and push process using an Azure DevOps pipeline.

---

**Task 1: Provision Azure Container Registry (ACR) with Terraform**

What was done:

* Created an Azure Resource Group.
* Provisioned an Azure Container Registry (admin\_enabled = true) using Terraform.

Deliverables:

* main.tf file for infrastructure provisioning.
* Screenshot of terraform apply.
* Screenshot of ACR in Azure Portal.

---

**Task 2: Build a Simple Docker Image**

What was done:

* Created a Dockerfile based on nginx.
* Included a custom index.html file with the message: "Hello from DevOps Intern".

Deliverables:

* docker/Dockerfile
* docker/index.html
* Screenshot of the site running locally using:
  docker build -t custom-nginx docker/
  docker run -p 8080:80 custom-nginx

---

**Task 3: Create a CI Pipeline to Push Image to ACR**

What was done:

* Configured a YAML-based pipeline in Azure DevOps.
* Used a self-hosted macOS agent.

The pipeline:

* Authenticates with ACR using Azure service connection.
* Builds the Docker image using `az acr build`.
* Pushes it to ACR with a specific tag (e.g., v1).

Deliverables:

* azure-pipelines.yml
* Screenshot of pipeline run.
* Docker image successfully pushed to ACR.

---

**Tech Stack**

* Azure DevOps
* Terraform
* Azure CLI
* Docker
* NGINX
* YAML

---