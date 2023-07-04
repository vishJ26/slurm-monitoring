# #!/bin/bash
./etc/parallelcluster/cfnconfig

# s3_bucket_name=vishal-application
# region=us-east-1
# S3FileName=pcluster/cw-computenode.json
# dir=cw-configs

# # makde dir for logs for jobs belonging to this queue
# mkdir /shared/logs/$stack_name/${cfn_scheduler_queue_name}

# cd /shared/$dir

# aws s3api get-object --bucket $s3_bucket_name --region $region --key $S3FileName  cw-computenode.json

# # replace queue name in file
# sed -i "s/__QUEUE_NAME__/${cfn_scheduler_queue_name}/g"  	cw-computenode.json

# # add config to cloudwatch
# /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl -a append-config -m ec2 -s -c file:cw-computenode.json

