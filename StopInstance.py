import boto3
ids = ['i-0dd4ef980c49136ba']
ec2 = boto3.resource('ec2')
ec2.instances.filter(InstanceIds = ids).stap() #for Starting an ec2 instanceimport boto3
