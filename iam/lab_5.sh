# Remove all groups/policies from the user "liemdev"

# Test cmd s3

# Create assume-role PowerUserRole with PowerUserAccess policy

# Assume the PowerUserRole for user "liemdev" and test cmd s3
aws sts assume-role --role-arn arn:aws:iam::123456789012:role/PowerUserRole --role-session-name LiemdevSession

sudo nano ~/.aws/credentials - replace with temp credentials
