resource "alicloud_instance" "vm" {
  security_groups            = [data.terraform_remote_state.vpc.outputs.security_group_id]
  vswitch_id                 = data.terraform_remote_state.vpc.outputs.subnet_id
  password                   = "P@ssw0rd123"
  instance_type              = "ecs.t6-c4m1.large"
  instance_name              = "VM"
  image_id                   = "debian_11_7_x64_20G_alibase_20230613.vhd"
  availability_zone          = "us-east-1a"
  internet_max_bandwidth_out = 10
}