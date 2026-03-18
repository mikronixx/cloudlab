# cloudlab

Terraform managed lab environment.

AWS to start. GCP and Azure to follow.

## Structure
```
aws/
  vpc/
```

## Why? 
- Production-quality code, lab-sized scope
- Good enough to learn from, simple enough to run on Pluralsight or KodeKloud
- Build it, break it, understand it

## Requirements
- Terraform >= 1.x
- AWS CLI configured (`aws configure`)

## Usage
```bash
cd aws/vpc
terraform init
terraform plan
terraform apply
```

## Roadmap
- AWS: Yes, more AWS
- GCP
- Azure
