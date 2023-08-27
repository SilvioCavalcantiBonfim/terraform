resource "aws_key_pair" "key" {
  key_name   = "aws"
  public_key = file("aws.key.pub")
}

resource "aws_instance" "vm" {
  ami                         = "ami-0e379d98832a982f0"
  instance_type               = "t2.micro"
  key_name                    = aws_key_pair.key.key_name
  subnet_id                   = data.terraform_remote_state.vpc.outputs.subnet_id
  vpc_security_group_ids      = [data.terraform_remote_state.vpc.outputs.security_group_id]
  associate_public_ip_address = true

  provisioner "local-exec" {
    command = "echo ${self.public_ip} >> public_ip.txt"
  }

  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("./aws.key")
    host        = self.public_ip
  }

  provisioner "file" {
    content     = "public_ip: ${self.public_ip}"
    destination = "/tmp/public_ip.txt"
  }

  provisioner "file" {
    source      = "./test.txt"
    destination = "/tmp/example.txt"
  }


  provisioner "remote-exec" {
    inline = [
      "echo ami: ${self.ami} >> /tmp/ami.txt",
      "echo private ip: ${self.private_ip} >> /tmp/private_ip.txt",
    ]
  }

  tags = {
    Name = "vm-terraform"
  }
}