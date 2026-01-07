# WCU - (write capacity units)

    - Block 1kb:

        - 1 WCU with standard mode

        - 2 WCU with transactional mode

# RCU - (read capacity units)

    - Block 4kb:    1 RCU

        - 2 req read /s with mode eventually consistency

        - 1 req read /s with mode strongly consistency

# Strongly consistency

# On-demand

    - auto

# Provisioned

    - setup -> min - max - target utilization

# Not database only have TABLE

    - Primary key

        - Simple primary key: partition key

        - Composite primary key: partition key and sort key

# Local secondary index:

    - Partition key same primary key (partition key)

    - Create sort key

# Global secondary index:

    - Create partition

    - Crate sort key

# query

    - Query on indexes

# Scan

    - Query on table

# Projections

    - Keys only: Partition Key, Sort Key

    - Include: Partition Key, Sort Key,...

        -  VD: fullname, bio,...

    - All

# Global table

    - Replica table to other region

# DAX - (Dynamodb accelerator)

    - Save in memory (cache)
