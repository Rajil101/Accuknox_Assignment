# Accuknox_Assignment 1

# Objective
containerize and deploy the Wisecow application through docker, make Wisecow application as Kubertnetess service.

## Setup linux ubuntu OS on vagrant cloud

>vagrant up

>vagrant ssh

>Clone the repository:

>git clone https://github.com/nyrahul/wisecow

# Prerequsite

#Run the command for insalation of dockerfile prerequsite.
>sudo apt install fortune-mod cowsay -y


## Install Docker

>Visit officaial site to download > [officaial site](https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository)

#Start docker
>sudo systemctl start docker

#Add or create dockerfile with command specified in the existing repo.
>vim Dockerfile

#Build the Docker image:
>docker build -t <dockerhub_username>/<docker_repo_name>:latest .


![Screenshot 2024-08-04 204241](https://github.com/user-attachments/assets/d51bb7e8-4709-4061-b137-08edd5eaed34)




#Run docker command for image creation at port 4499
docker run -d -p 8000:4499 <dockerhub_username>/<docker_repo_name>:latest


![Screenshot 2024-08-04 214358](https://github.com/user-attachments/assets/9689f6e5-01e8-4118-9ca6-031eee62cd60)




![Screenshot 2024-08-04 214330](https://github.com/user-attachments/assets/e675e5a1-cab9-4302-bd2c-14e9b540e0f1)


*Here I port forwarded the wisecow application to localhost from 4499. 

Login to your docker account and push the image.
>docker login <registry_address>

for e.g   >sudo docker login docker.io , the registry address is docker.io in default.

#Push the Docker image:

>docker push <dockerhub_username>/<docker_repo_name>:latest


![Screenshot 2024-08-04 211631](https://github.com/user-attachments/assets/a55c70a7-a847-43ec-a04d-76a1a77c106b)


*Password is stored in unencrypted on docker config file.

#Unlog from docker Registry
>docker logout <registry_address>

#Stop the docker if required.
>sudo systemctl stop docker


## Cluster Creation for Ks8 pods 

#Step 1: Install Minikube

>curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64

>sudo install minikube-linux-amd64 /usr/local/bin/minikube

#Step 2: Start the Minikube cluster

>minikube start

#Step 3: Install Kubectl

>sudo snap install kubectl --classic

#Step 4: Verify the minikube pods running

>minikube kubectl -- get pods -A

#Step 6: Create, deploy & expose Deployment application of Nginx Server

>vim manifest.yaml

>kubectl apply -f manifest.yaml

>kubectl expose manifest --port=4499 --target-port=8000

#Step 7: Verify the Pods and services of the application status

>kubectl get pods

>kubectl get services

#Step 8: Check the minikube arctitecture is created and running before access the application

>minikube start

>minikube stop



## Git Integration

#Install the git

>sudo apt-get install git -y

>git remote add origin https://github.com/Rajil101/Accuknox_Assignment.git

>git branch -M main

>git push origin main

The authentication will be done through access token.
