# Create 2 instance ec2-1 and ec2-2 in us-east-1a and us-east-1b respectively

# Ping ec2-1 and ec2-2 using their private IPs to verify connectivity   -> Fail

# Configure security groups to allow ICMP traffic between the instances

# Ping ec2-1 and ec2-2 using their private IPs to verify connectivity   -> OK

# Create a Route 53 private hosted zone

    - Create record sets for ec2-1 and ec2-2 , private IPs

# Ping ec2-1 and ec2-2 using their private DNS names to verify connectivity   -> OK