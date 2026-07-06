# Terraform EC2 and S3 Resource Lifecycle

This project demonstrates the basic Terraform resource lifecycle by creating, verifying, and destroying AWS resources.

## Project Overview

In this project, Terraform was used to provision the following AWS resources:

- EC2 instance
- S3 bucket

After creating the resources, they were verified from the AWS Console. Finally, all resources were destroyed using Terraform to avoid unnecessary AWS charges.

## Assignment Information

| Item | Details |
|---|---|
| Course | Ostad_Matering_DevOps_Batch_09 |
| Module | 07 |
| Assignment | Terraform: EC2 and S3 Resource Lifecycle |
| Cloud Provider | AWS |
| Region | us-east-1 |

## Resources Created

| Resource | Details |
|---|---|
| EC2 Instance Name | TerraformAssignment-EC2 |
| Instance Type | t3.micro |
| Availability Zone | us-east-1a |
| S3 Bucket | terraform-assignment-816975652337-module7 |
| Region | us-east-1 |

> Note: The assignment originally mentioned `t2.micro`, but AWS restricted `t2.micro` launch in this account. Therefore, `t3.micro` was used to complete the implementation.

## Project Files

| File / Folder | Purpose |
|---|---|
| `main.tf` | Defines the AWS provider, EC2 instance, S3 bucket, AMI data source, subnet selection, and tags |
| `outputs.tf` | Displays EC2 instance ID, EC2 public IP, and S3 bucket name |
| `.gitignore` | Prevents Terraform state and local files from being uploaded to GitHub |
| `docs/` | Contains the final assignment submission PDF |
| `screenshots/` | Contains screenshots of Terraform apply, AWS verification, and Terraform destroy |

## Terraform Workflow

The following Terraform workflow was used:

```bash
terraform init
terraform validate
terraform plan
terraform apply
terraform destroy
```

## Bonus Requirement

Tags were added to both the EC2 instance and the S3 bucket.

Common tags:

```text
Project   = TerraformAssignment
Module    = Module7
ManagedBy = Terraform
```

Name tags:

```text
EC2 = TerraformAssignment-EC2
S3  = TerraformAssignment-S3
```

## Screenshots

The project includes screenshots for:

- Terraform apply execution
- EC2 instance created in AWS Console
- S3 bucket created in AWS Console
- Terraform destroy execution

## Cleanup

All resources created for this assignment were destroyed using:

```bash
terraform destroy
```

This ensures that no unnecessary AWS resources remain active after completing the assignment.

## Learning Outcome

This project helped me understand the basic Terraform infrastructure lifecycle:

```text
Write configuration → Initialize Terraform → Plan → Apply → Verify → Destroy
```

## Author

**Ifti Sam Ibn Rahman**  
