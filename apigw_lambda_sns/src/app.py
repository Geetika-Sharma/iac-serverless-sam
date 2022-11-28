import json
import boto3
import time

def lambda_handler(event, context):
    body = event['body']
    data = json.loads(body)
    username = data['username']
    email = data['email']
    contact = data['contact']
    sns = boto3.client('sns')
    
    Message='Hello User ' + username + ' your email ID is ' + email + ' your contact number is ' + contact
    #time.sleep(120)
    response = sns.publish(
        TopicArn='# Specify the SNS topic ARN',
        Message='Hello User ' + username + ' your email ID is ' + email + ' your contact number is ' + contact,
    )
    return {
        "statusCode": 200,
        "body": json.dumps(Message)
    }