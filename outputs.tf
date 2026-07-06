output "ec2_instance_id" {
  description = "ID of the EC2 instance created by Terraform"
  value       = aws_instance.assignment_ec2.id
}

output "ec2_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.assignment_ec2.public_ip
}

output "s3_bucket_name" {
  description = "Name of the S3 bucket created by Terraform"
  value       = aws_s3_bucket.assignment_bucket.bucket
}
