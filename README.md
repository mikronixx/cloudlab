# cloudlab

Terraform managed lab environment.

AWS to start. GCP and Azure to follow.

## Structure
```
aws/
  vpc/
  aws-api-testlab/
```

## Why? 
- Production-quality code, lab-sized scope
- Good enough to learn from, simple enough to run on Pluralsight or KodeKloud
- Build it, break it, understand it

## Requirements
- Terraform >= 1.x
- AWS CLI configured (`aws configure`)

## Prereqs
```bash
pip install pre-commit
pre-commit install
```
## Usage
```bash
cd aws/<some_dir>
terraform init
terraform plan
terraform apply
```
## When done
```bash
terraform destroy
```

## Roadmap
- AWS: Yes, more AWS
- GCP
- Azure
