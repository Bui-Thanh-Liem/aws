#!/bin/bash
# Update OS (Operating System)
sudo yum update -y
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd

# Move to web directory
cd /var/www/html

# Get Token for IMDSv2 (More secure)
export TOKEN=$(curl -X PUT "http://169.254.169.254/latest/api/token" -H "X-aws-ec2-metadata-token-ttl-seconds: 21600")

# Write content to index.html
echo "<html>" > index.html
echo "<h1>Welcome to EC2 Lab 3</h1>" >> index.html
echo "<p>This is a sample web page served by Apache on an EC2 instance.</p>" >> index.html

# Get IP and append to file
echo "<br><b>Private IP:</b> " >> index.html
curl -H "X-aws-ec2-metadata-token: $TOKEN" http://169.254.169.254/latest/meta-data/local-ipv4 >> index.html

echo "<br><b>Public IP:</b> " >> index.html
curl -H "X-aws-ec2-metadata-token: $TOKEN" http://169.254.169.254/latest/meta-data/public-ipv4 >> index.html

echo "</html>" >> index.html