sg_name        = "infra_dev_sg"
sg_description = "infra_dev_security_group"

instance_type = "t2.micro"

associate_public_ip_address = "true"

ebs_block_device_device_name = "/dev/sdc"

vpc_id                     = "vpc-0837673cae1ba2d3c"
ebs_block_device_encrypted = "true"

ebs_block_device_volume_size = 30

ebs_block_device_volume_type = "gp2"

ec2_tags = {
  Name = "infra_dev_ec2_one"
}

ec2_key_pair = "infra-dev"

ec2_public_tags = {
  Type = "public"
}

ec2_private_tags = {
  Type = "private"
}

public_instance_count = 4
private_instance_count = 5