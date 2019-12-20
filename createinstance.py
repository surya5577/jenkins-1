import boto3
ec2 = boto3.resource('ec2')
instance = ec2.create_instances(
    ImageId = 'ami-0d5d9d301c853a04a',
    MinCount = 1,
    MaxCount = 2,
    InstanceType = 't2.micro',
    KeyName = 'amma',
    SubnetId = 'subnet-03776c6b')
print (instance[0].id)
