#  IaC - SAM- CloudFormation 
This repository contains SAM (IaC) to accomplish various tasks.

## About SAM

The AWS Serverless Application Model (SAM) is an open-source framework for building serverless applications. It provides shorthand syntax to express functions, APIs, databases, and event source mappings.

### samconfig.toml
The AWS SAM CLI supports a project-level configuration file that stores default parameters for its commands. This configuration file is in the TOML file format, and the default file name is samconfig.toml. The file's default location is your project's root directory, which contains your project's AWS SAM template file.

You can manually edit this file to set default parameters for any AWS SAM CLI command. In addition, the sam deploy --guided command writes a subset of parameters to your configuration file

## Features

- Different mini projects in SAM to create AWS resources

### apigw_lambda_sns
This project creates a simple Lambda function that passes the payload received from ApiGateway to the SNS Topic
- APIGateway → Lambda → SNS
- A Lambda function with source code store in src
- An API Gateway with logging enabled
- API Event that will invoke the function
- IAM Role with access to assume role
- Creates a SNS topic
- Lambda published message paylog to SNS topic
- A SNS subscription to the specified email-ID

