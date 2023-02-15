data "template_file" "user_data" {
  template = file("${path.module}/user-data.sh")
}

resource "aws_instance" "ec2" {
  ami                    = var.ec2_ami_id
  instance_type          = var.ec2_instance_type
  key_name               = var.ec2_key_pair_name
  vpc_security_group_ids = ["sg-05abd23daa54049a5"] # sg_kulroai_student_vm
  iam_instance_profile   = "kulroai_ec2_profile"

  root_block_device {
    volume_size = var.ec2_root_block_device_size_in_gb
  }

  tags = {
    Owner = local.deployer_name
  }

  # Install Docker by default.
  user_data = data.template_file.user_data.rendered
}
