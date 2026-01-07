# Memory

    - Min 128MB

    - Max 10GB

# CPU

    - Memory is directly proportional to CPU.

# When running, a temporary memory area is allocated. min = 521mb, max = 10gb

# Timeout

    - 15 minus

# It can called from: API gateway, s3, SQS, Dynamodb, IOT

# Log - CloudWatch

# File output - s3, EFS

# Data output - RDS or Dynamodb

# Layer

    - Contain library (node_modules, folder utils, folder common...)

# Concurrent

    - Reserved concurrency  - config before prod

    - Provisioned Concurrency

        - solution cold start
