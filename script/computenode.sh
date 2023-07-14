#!/bin/bash
source /etc/parallelcluster/cfnconfig
echo ""
echo ""
echo "Computenode Script Start"

s3_bucket=vishal-pcluster
region=us-east-1
S3FileName=configs/cw-computenode.json

cd /shared

aws s3api get-object --bucket $s3_bucket --region $region --key $S3FileName  cw-computenode.json

# replace queue name in file
sudo sed -i "s/__QUEUE_NAME__/${cfn_scheduler_queue_name}/g"  	cw-computenode.json

# add config to cloudwatch
sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl -a append-config -m ec2 -s -c file:cw-computenode.json

echo "Computenode Script End"
