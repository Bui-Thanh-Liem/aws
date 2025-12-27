# Upload static website files to S3 bucket
aws s3 cp index.html s3://devandbug.info.vn/index.html --recursive

# Uncheck all public access block on the bucket

# Configure bucket policy to allow public read access
{
    "Version": "2012-10-17",
    "Statement": [
        {
        "Sid": "PublicReadGetObject",
        "Effect": "Allow",
        "Principal": "*",
        "Action": "s3:GetObject",
        "Resource": "arn:aws:s3:::devandbug.info.vn/*"
        }
    ]
}

# Configure the bucket for static website hosting


