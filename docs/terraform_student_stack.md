* An EC2 instance with the `kulroai_ec2_role` IAM role attached to it. This role permits the EC2 
      instance to read from ECR repositories and S3 buckets. The instance is deployed with the reference
      security group `sg_kulroai_student_vm` attached to it.

    * An ECR repository with the name of the student's IAM user name.

    * An S3 bucket with the name of the student's IAM user name.