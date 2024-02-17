# AWSDeepLearningTorch+Jupyter Docker Image

# Pre-Reqs
* Docker 24.0

### Conditional Pre-req
Instructions based on [AWS](https://github.com/aws/deep-learning-containers/blob/master/available_images.md)
If you want to pull directly from the official AWS Repo instead of the image I forked, then you must:
* Validated AWS credentials to pull from AWS public repo via:
  ```
  aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 763104351884.dkr.ecr.us-east-1.amazonaws.com
  ```
## Base Image
aws-pytorch-training:2.0.1-cpu-py310-ubuntu20.04-ec2
  [For more images](https://github.com/aws/deep-learning-containers/blob/master/available_images.md)
[supermomo668 Hub](https://hub.docker.com/r/supermomo668/dev/tags)
## Feature & Note
Everything in the base AWS AMI image 
* Jupyter lab will spin up at localhost:8888
* Conda environment ```dl``` will be created with Python3.11
* Maps GPUs if available
* System + Python pip packages will be updated in 'dl' upon run
* Maps host docker into docker environment to avoid re-installation
## Usage
### TO-DOs
* Good idea to mount your personal development directory to the container by modifying the  `mount` directory in the (docker-compose file)[https://github.com/supermomo668/AWSDeepLearningTorch2-Jupyter-Docker/blob/main/torch2.0-train/dockercompose.yml].
  * Change the following to your usernames and/or directories:
  ```
      - /c/Users/Mo/Documents/GitHub/Projects:/root/projects:delegated
      - /c/Users/Mo/.ssh/:/root/.ssh/
      - /c/Users/Mo/.aws/:/root/.aws/
  ```
  

Upon configuring , window or linux command is ready out of box by the command:
```
docker-compose -f "torch2.0-train/dockercompose.yml" --project-directory . up -d --build
```
Or the scripts:
Windows
``` 
>
compose_docker_dl-windows.bat
```
or 
```
$
compose_docker.sh
```
## Customization
Change any of the ```dockercompose.yaml``` such as the ```volume``` mapping
