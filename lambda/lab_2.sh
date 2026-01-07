# Create ec2 instance (amazon linux 2)

# Create lambda function

# Create schedule (event bridge)

    - start at 8:00 AM ( weekdays )

        - { "action": "start", "instanceIds": ["i-0123456789abcdef0"] }

    - stop at 6:00 PM ( weekdays )
    
        - { "action": "stop", "instanceIds": ["i-0123456789abcdef0"] }