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

## Install Minikube by ansible 
![image](https://github.com/elmansey/ITI_Graduation_Project/assets/89076648/cc0a1027-01b7-41c3-97ea-9d39029360b7)
![image](https://github.com/elmansey/ITI_Graduation_Project/assets/89076648/a6094407-316b-4abc-895d-5373e1e436a9)
![image](https://github.com/elmansey/ITI_Graduation_Project/assets/89076648/bd72915a-f1cd-4069-9120-731b3b9c52e8)






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
![image](https://github.com/elmansey/ITI_Graduation_Project/assets/89076648/5f9632b1-124e-4bc7-87c7-15863931b2b5)
![image](https://github.com/elmansey/ITI_Graduation_Project/assets/89076648/dcee024c-4a29-4a15-81fb-3635dc9cf970)
![image](https://github.com/elmansey/ITI_Graduation_Project/assets/89076648/764673d9-75cd-4f59-9461-fd06a9c19eea)
![image](https://github.com/elmansey/ITI_Graduation_Project/assets/89076648/7897488f-481f-4471-9f4b-28d01d6a35d7)
![image](https://github.com/elmansey/ITI_Graduation_Project/assets/89076648/a095d8ea-34dd-4994-932d-e69acd0f288e)
![image](https://github.com/elmansey/ITI_Graduation_Project/assets/89076648/568bb455-cb19-4421-a4ee-4ddf81840848)
![image](https://github.com/elmansey/ITI_Graduation_Project/assets/89076648/ce85ceae-bb67-4567-a1db-3b4fcb86df11)















## App Repo That Used At CI CD Stages [here](https://github.com/ahmedgamalbakr/app_deployment)

## Authors

- [Abdelrahman Elmansey ](https://www.linkedin.com/in/abdelrahman-elmansey/)
- [Mohamed Elnabawey ](linkedin.com/in/mohammed-el-nabawy)
- [Ahmed Gamal ](https://www.linkedin.com/in/ahmed-gamal-509218149/)