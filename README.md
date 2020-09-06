# Azure AKS Terraform

This repository is used for demo purposes. This Terraform source code will create a sample infrastructure, which will create a list of infrastructure components below:
Azure Kubernetes Service
Postgresql
Redis Cache
Azure Blob Storage
Private DNS
Virtual Network
Besides, the source code also set up the virtual network and allows the Postgresql can be accessed through the private connection. The Azure Kubernetes Service is also using the Azure CNI plugin.

## Prerequisites:

1. [Install Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest)
2. Login to Azure CLI with the command below:

```
az login
```

3. [Install terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli)

## Set up infrastructure:

1. terraform init
2. terraform plan
3. terraform apply
4. az aks get-credentials -g terraform-env -n k8s-cluster # this will fetch the Kubernetes config from the AKS to your local Kubernetes config file
