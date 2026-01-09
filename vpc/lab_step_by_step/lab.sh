# VPC CIDR: 10.0.0.0/16

# Create 2 type subnets (public and private) every subnet contain 1000 ips

    - 10.0.0.0/22   - public
    - 10.0.4.0/22   - public
    - 10.0.8.0/22   - private
    - 10.0.12.0/22  - private

# Create internet gateway, attach to VPC

# Create NAT gateway, elastic IP, attach to public subnet

# Create route tables for public/private subnet, associate subnet with route table

# Create VPC endpoint for S3, attach to route table of private subnet

# Create security group allow HTTP, HTTPS, MYSQL/Aurora, elasticsearch, SSH from my IP only

# Create EC2 instance in public subnet, assign security group bastion, assign elastic IP

# Create EC2 instance in private subnet, assign security group app

# Delete NAT gateway, delete NAT gateway of subnet private

# Create IAM role for EC2 with S3 full access

# Attach IAM role to EC2 instance in private subnet

# Test S3 access from EC2 instance in private subnet