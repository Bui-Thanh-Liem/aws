# IAM Policy (Permission)
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "ListObjectsInBucket",
            "Effect": "Allow",
            "Action": ["s3:ListBucket"],
            "Resource": ["arn:aws:s3:::ten-bucket-cua-ban"]
        },
        {
            "Sid": "AllObjectActions",
            "Effect": "Allow",
            "Action": [
                "s3:GetObject",
                "s3:PutObject",
                "s3:DeleteObject"
            ],
            "Resource": ["arn:aws:s3:::ten-bucket-cua-ban/*"]
        }
    ]
}

# Resource Policy
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "deny-liemdev",
            "Effect": "Deny",
            "Principal": {
                "AWS": "arn:aws:iam::664418987796:user/liemdev"
            },
            "Action": "s3:*",
            "Resource": [
                "arn:aws:s3:::test-01-25122015",
                "arn:aws:s3:::test-01-25122015/*"
            ]
        }
    ]
}




# Principal: entities: {"AWS": "arn:"}

# Statement: []

# Sid: ""

# Effect: Allow / Deny   - prioritize Deny

# Action: []

# Resource: []

# Condition?: []

# Inline Policy: 
    - attach role/user/group  - not reusable

# Managed Policy:
    - attach role/user/group  - reusable  

    - AWS managed             - aws create

    - User managed            - user create

