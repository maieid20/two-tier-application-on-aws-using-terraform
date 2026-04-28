# 🚀 Two-Tier AWS Architecture using Terraform

![Terraform](https://img.shields.io/badge/IaC-Terraform-623CE4?logo=terraform)
![AWS](https://img.shields.io/badge/Cloud-AWS-FF9900?logo=amazon-aws)
![Architecture](https://img.shields.io/badge/Design-2--Tier-blue)

---

## 📌 Overview

This project provisions a **secure, scalable, and highly available 2-tier AWS architecture** using **Terraform Infrastructure as Code (IaC)**.

The architecture separates the application into:

- **Web Tier →** Load Balancer + EC2 Auto Scaling Group  
- **Database Tier →** Amazon RDS (Multi-AZ)

---

## 🏗️ Architecture Diagram

<div align="center">
  <img src="https://github.com/user-attachments/assets/65ffab69-40e2-412c-97b7-89e0fd1fb389" width="750"/>
</div>

---

## 🧩 Architecture Components

### 🌐 1. Networking Layer (VPC)
- Custom VPC  
- Public Subnets (ALB / NAT Gateway)  
- Private Web Subnets (EC2 instances)  
- Private DB Subnets (RDS)  
- Internet Gateway  
- NAT Gateway  
- Route Tables & Associations  

---

### ⚖️ 2. Load Balancing Layer
- Application Load Balancer (ALB)  
- Traffic distribution across EC2 instances  
- High availability across multiple Availability Zones  

---

### 💻 3. Web Tier
- Amazon EC2 instances  
- Auto Scaling Group  
- Hosted in private subnets  
- Runs application workload  

---

### 🗄️ 4. Database Tier
- Amazon RDS  
- Multi-AZ deployment for failover  
- Private DB subnet group  

---

## 📁 Terraform Project Structure

```text
two-tier-architecture/
│── provider.tf
│── variables.tf
│── terraform.tfvars
│── outputs.tf
│── main.tf
│
├── modules/
│   ├── vpc/
│   ├── subnets/
│   ├── security-groups/
│   ├── ec2/
│   ├── alb/
│   └── rds/
│
└── README.md

---

## 🚀 Deployment Steps

1. cd root
2. terraform init
3. terraform plan
4. terraform apply
terraform apply


