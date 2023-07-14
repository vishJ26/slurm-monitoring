#!/bin/bash
source /etc/parallelcluster/cfnconfig
echo ""
echo ""
echo "Headnode Script Start"

s3_bucket=vishal-pcluster
region=us-east-1
S3FileName=configs/cw-headnode.json
S3FileName2=configs/fluent-bit.conf

cd /shared

# APPENDING CW CONFIG
aws s3api get-object --bucket $s3_bucket --region $region --key $S3FileName  cw-headnode.json
# add config to cloudwatch
sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl -a append-config -m ec2 -s -c file:cw-headnode.json

# UPDATING FLUENT-BIT CONFIG
# get config for fluent bit
aws s3api get-object --bucket $s3_bucket --region $region --key $S3FileName2  fluent-bit.conf

# replace cluster name in fluent-bit config file
sudo sed -i "s/__CLUSTER_NAME__/${stack_name}/g"  	fluent-bit.conf

sudo cp fluent-bit.conf /etc/fluent-bit/fluent-bit.conf

sudo systemctl stop fluent-bit
sudo systemctl disable fluent-bit
sudo systemctl daemon-reload

sudo systemctl enable fluent-bit
sudo systemctl start fluent-bit
sudo systemctl status fluent-bit

echo "Headnode Script End"
