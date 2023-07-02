# ITI 9-Month Graduation Project

This repository contains the Ansible Code to install minikub kubernetes cluster and Terraform code to build infrastructure on k8s .


## Overview

This project uses Terraform to create the following K8S resources:


- Two Namespaces 
- Mysql and Node app Deployments
- Mysql and Node app Services 
- k8s Secrets and ConfigMaps 
- persistent volume and persistent volume claim 
- Service account and cluster role and cluster role binding  





## Getting Started

To get started with this project, clone this repository to your local machine:

```
$ git clone https://github.com/elmansey/ITI_Graduation_Project
```

## Tools 

- Terraform 
- Ansible 
- Jenkins 
- Kubernetes 
- Nexus 
- Docker 



## Steps 

- Use ansible role to install Minikube 
```
  cd ITI_Graduation_Project/Ansible
```
```
  ansible-playbook minikube.yaml
```
- Use terraform to create Kubernetes resources 
```
  cd ../Terraform
```
```
  terraform init 
```
```
  terraform apply
```


## Configure nexus 
```
kubectl get pod -n tools 
kubectl get svc -n tools
kubectl port-forward service/<clusterIP service name> -n <namespace name> 8081:8081 (To expose cluster ip service)
```

## Nexus Up
![image](https://github.com/elmansey/ITI_Graduation_Project/assets/89076648/619073a3-999e-41ef-b6af-2ac13d07564e)
![image](https://github.com/elmansey/ITI_Graduation_Project/assets/89076648/555e6d0d-5065-4f53-8923-37d4c339454f)
![image](https://github.com/elmansey/ITI_Graduation_Project/assets/89076648/db9d7097-1270-40f2-85ee-a18930a74cbb)



## Jenkins Up















## App Rebo That Used At CI CD Stages [here](https://github.com/ahmedgamalbakr/app_deployment)

## Authors

- [Abdelrahman Elmansey ](https://www.linkedin.com/in/abdelrahman-elmansey/)
- [Mohamed Elnabawey ](https://www.linkedin.com/in//)
- [Ahmed Gamal ](https://www.linkedin.com/in//)