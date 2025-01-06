module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "single-instance"

  instance_type          = "t2.micro"
  key_name               = "MyLinuxBox"
  monitoring             = true
  vpc_security_group_ids = ["aws_sg.tokyo_sg.id"]
  subnet_id              = "aws_subnet.tokyo_subnet_private_1c.id"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}