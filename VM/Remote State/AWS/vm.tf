resource "aws_key_pair" "key" {
  key_name   = "aws-key"
  public_key = file("aws.key.pub")
}

resource "aws_instance" "vm" {
  ami                         = "ami-0e379d98832a982f0"
  instance_type               = "t2.micro"
  key_name                    = aws_key_pair.key.key_name
  subnet_id                   = data.terraform_remote_state.vpc.outputs.subnet_id
  vpc_security_group_ids      = [data.terraform_remote_state.vpc.outputs.security_group_id]
  associate_public_ip_address = true

  tags = {
    name = "vm-terraform"
  }
}