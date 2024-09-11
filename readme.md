# Deploy CentOS 7 EC2 Instance on AWS Using Terraform

## Overview

This guide provides a summary for deploying a CentOS 7 EC2 instance on AWS using Terraform from an Ubuntu VM in Oracle VirtualBox.

## Prerequisites

- **Ubuntu VM** in Oracle VirtualBox.
- **Terraform** installed.
- **AWS CLI** configured with credentials.

## Installation

1. **Install Terraform**:
   - Download and install Terraform.
   - Verify installation with `terraform --version`.

2. **Install and Configure AWS CLI**:
   - Install AWS CLI.
   - Configure it using `aws configure`.

## Setup Terraform

1. **Create Directory**:
   - Create and navigate to a directory for Terraform files.

2. **Create `main.tf`**:
   - Define your AWS provider and EC2 instance configuration.
   - Include key pair information and specify the CentOS 7 AMI ID.

3. **Initialize and Apply**:
   - Run `terraform init`, `terraform plan`, and `terraform apply`.

## Troubleshooting

- **Key Pair Issues**:
  - Verify or create the key pair in AWS Management Console or using AWS CLI.
  - Update `main.tf` with the correct key pair name.

## Access and Clean Up

- **Access**: Use the public IP and SSH into the instance.
- **Clean Up**: Run `terraform destroy` to terminate resources.

---

This README provides a quick overview of deploying a CentOS 7 instance on AWS with Terraform.

