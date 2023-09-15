# AWSDeepLearningTorch+Jupyter Docker Image

## Pre-req
Instructions based on [AWS](https://github.com/aws/deep-learning-containers/blob/master/available_images.md)
Validated AWS credentials to pull from AWS public repo via:
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
* Python pip packages will be updated in 'dl' upon run

## Usage
Upon configuring , window or linux command is ready out of box. On windows:
```
>
compose_docker_dl-windows.bat
```
or 
```
$
compose_docker.sh
```
