resource "alicloud_instance" "vm" {
  security_groups            = [data.terraform_remote_state.vpc.outputs.security_group_id]
  vswitch_id                 = data.terraform_remote_state.vpc.outputs.subnet_id
  password                   = "P@ssw0rd123"
  instance_type              = "ecs.t6-c4m1.large"
  instance_name              = "VM"
  image_id                   = "debian_11_7_x64_20G_alibase_20230613.vhd"
  availability_zone          = "us-east-1a"
  internet_max_bandwidth_out = 10

  provisioner "local-exec" {
    command = "echo ${self.public_ip} >> public_ip.txt"
  }

  connection {
    type     = "ssh"
    user     = "root"
    password = self.password
    host     = self.public_ip
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
      "echo image_id: ${self.image_id} >> /tmp/image_id.txt",
      "echo private ip: ${self.private_ip} >> /tmp/private_ip.txt",
    ]
  }
}