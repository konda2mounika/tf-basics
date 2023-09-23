#!/bin/python
# Importing boto3 library to make functionality available
 import boto3
# Creating the connection with the resource of AWS EC2 service
 ec2 = boto3.resource('ec2')
# creating a new EC2 instance
 instances = ec2.create_instances(
      ImageId='ami-0cb7d8dc2b12a2c0d',
      MinCount=1,
      MaxCount=1,
      InstanceType='t2.micro',
  )
  print("AWS EC2 Instance Launched successfully")