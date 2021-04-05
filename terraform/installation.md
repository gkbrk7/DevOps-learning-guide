# Installation Guide

Go to official website to [download](https://www.terraform.io/downloads.html) Terraform.

## Linux Setup

```
wget https://releases.hashicorp.com/terraform/0.14.9/terraform_0.14.9_linux_amd64.zip

sudo apt install zip unzip -y

unzip terraform_0.14.9_linux_amd64.zip

sudo mv terraform /usr/local/bin/ or export PATH=/terraform:$PATH

terraform -v
```

## Windows Setup

Download from the official website of hashicorp terraform

```
set PATH=%PATH%;terraform_path

terraform -version
```

## MAC Setup

Download from the official website and install with brew

# Getting Start with Terraform

> Some necessary commands to get started

```
terraform init

terraform plan

terraform apply

terraform destroy
```
