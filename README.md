# Terraform
This Repository have all terraform files
🌐 AWS Infrastructure Provisioning with Terraform

This repository contains Terraform configuration files to provision basic AWS infrastructure components including:

- Virtual Private Cloud (VPC)
- Subnet and Route Table
- EC2 Instance
- IAM User with S3 Access
- S3 Bucket

---

## 📁 Files Overview

| File Name       | Description |
|------------------|-------------|
| VPC.tf         | Creates a VPC with specified CIDR block. |
| Routetable.tf`  | Sets up a custom route table for the VPC and associates it with a subnet. |
| Ec2.tf`         | Provisions an EC2 instance with default tags and AMI (Amazon Linux). |
|IAM.tf`         | Creates an IAM user and attaches a policy granting full S3 access. |
|S3.tf`          | Provisions an S3 bucket with tags. |

---

  How to Use

1. **Install Terraform**  
   [Download Terraform](https://developer.hashicorp.com/terraform/downloads) and ensure it's added to your system path.

2. **Configure AWS CLI**  
   Make sure your AWS credentials are set up via:
   bash aws configure

3.Clone the Repository

git clone https://github.com/Rakshitram07/Terraform.git
cd Terraform

4.Initialize Terraform

terraform init

5.Review the Execution Plan

terraform plan

6.Apply the Configuration

terraform apply
