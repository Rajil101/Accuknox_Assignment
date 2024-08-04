# Accuknox_Assignment

# Objective
containerize and deploy the Wisecow application through docker, make Wisecow application as Kubertnetess service.

## Setup linux ubuntu OS on vagrant cloud

>vagrant up

>vagrant ssh

>Clone the repository:

>git clone https://github.com/nyrahul/wisecow



## Install Docker

>Visit officaial site to download > [officaial site](https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository)



#Build the Docker image:
>docker build -t <dockerhub-username>/wisecow-docker:latest .

#Run docker command for image creation at port 4499
docker run -d -p localhost:4499 <dockerhub-username>/wisecow-docker:latest

OR Expose through >EXPOSE 4499 command.

Login to your docker account and push the image.


#Push the Docker image:

>docker push <dockerhub-username>/wisecow-docker:latest



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
