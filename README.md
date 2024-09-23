# go-project
A simple go language based project which is containerized and have CI/CD using Jenkins

## Steps to execute
*note:* Make sure docker is installed on the machine

### command to install docker and providing specific permission to your user
'
sudo apt install docker.io -y
sudo usermod -aG docker $USER
sudo apt-get update
'
### CLone repo
`git clone https://github.com/HimanshuAwasthi24/go-project.git`

### run the image and container 

`
docker build -t docker_hub_username/imageName:tag
docker run -dp 8080:8080 docker_hub_username/imageName:tag
`
on localhost:8080 you should see the application running

### pushing the image to dockerhub
`docker push docker_hub_username/imageName:tag`