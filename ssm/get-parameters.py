import boto3

client = boto3.client('ssm', region_name='us-east-1')
print(client.get_parameter(Name='dev_domain')['Parameter']['Value'])
