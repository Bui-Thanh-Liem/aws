# Create table in DynamoDB

    - Primary key: id (string)

    - Sort key: name (string)   address (string)

# Create lambda function to interact with DynamoDB

    - index.mjs ( handler )

    - set permissions ( dynamodb read/write, cloudwatch logs )

# Create s3 bucket

    - files ( original )

    - processed ( processed data )

# Add trigger to lambda function (s3 put object) (/files)