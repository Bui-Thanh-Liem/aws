# Update OS (Operating System)
sudo yum update -y

# Install HTTPD (Apache Web Server)
sudo yum install httpd -y

# Modify the default web page
sudo vi /var/www/html/index.html

# Add custom content to the web page
<h1>Welcome to EC2 Lab 1</h1>
<p>This is a sample web page served by Apache on an EC2 instance.</p>

# Start the HTTPD service
sudo systemctl enable httpd
sudo systemctl start httpd