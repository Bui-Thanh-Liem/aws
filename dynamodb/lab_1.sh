# Create 1 table USERS

    - partition key: id (number), sort key: name (string)

    - Create local secondary index on age (number)

# Query the table using the local secondary index to find all users with a specific age.

# Create the DynamoDB table with a global secondary index