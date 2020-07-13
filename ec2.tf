data "aws_ami" "instance_store_ami" {
  most_recent = true
  owners      = ["681504525746"]

  filter {
    name = "name"
    values = ["amzn2-ami-hvm-2.0.20200617.0-x86_64-gp2"]
  }

  filter {
    name = "virtualization-type"
    values = ["hvm"]
  }
}

resource "aws_instance" "pritunl" {
  ami           = data.aws_ami.instance_store_ami.id
  instance_type = var.instance_type
  key_name      = var.aws_key_name
  user_data     = file("provision.sh")

  subnet_id                   = var.public_subnet_id
  associate_public_ip_address = true

  vpc_security_group_ids = [
    aws_security_group.pritunl.id,
  ]
}


resource "aws_eip" "pritunl" {
   instance = aws_instance.pritunl.id
   vpc      = true
}