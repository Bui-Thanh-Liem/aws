# IAM User Key Không hết hạn Không giới hạn

# AWS SSO (Identity Center) 8 - 12 giờ 90 ngày

# STS Session Token 12 giờ 36 giờ

# Assume Role 1 giờ 12 giờ


# ===== AWS CLI Authentication =====

On console aws - create access key and secret key for user

aws configure

aws sts get-session-token --serial-number arn:aws:iam::123456789012:mfa/your-mfa-device --token-code 123456

sudo nano ~/.aws/credentials - replace with temp credentials

test [default] 
test [profile-name] --profile profile-name

# ===== AWS CLI Authentication =====
aws login


# ===== Check identity =====
aws sts get-caller-identity




