# Create lambda function

    - index.mjs ( handler )

    - set permissions ( s3 get object, s3 put object, cloudwatch logs )

# Create layer for lambda function (node_modules sharp)

    -   docker run --rm -it ^
        --entrypoint bash ^
        -v "%cd%:/var/task" ^
        -w /var/task ^
        public.ecr.aws/lambda/nodejs:24

    - node_modules/sharp/...

# Add layer to lambda function

# Create s3 bucket

    - images ( original )

    - images-resized ( resized )

# Add trigger to lambda function (s3 put object) (/images)