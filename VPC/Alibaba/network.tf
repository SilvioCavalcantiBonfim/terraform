resource "alicloud_vpc" "vpc" {
  vpc_name   = "vpc"
  cidr_block = "10.0.0.0/16"
}

resource "alicloud_vswitch" "subnet" {
  vswitch_name = "subnet"
  vpc_id       = alicloud_vpc.vpc.id
  cidr_block   = "10.0.0.0/24"
  zone_id      = data.alicloud_zones.foo.zones.0.id
}

resource "alicloud_security_group" "security_group" {
  name   = "security-group"
  vpc_id = alicloud_vpc.vpc.id
}

resource "alicloud_security_group_rule" "allow_all_tcp" {
  type              = "ingress"
  ip_protocol       = "tcp"
  nic_type          = "intranet"
  policy            = "accept"
  port_range        = "1/65535"
  priority          = 1
  security_group_id = alicloud_security_group.security_group.id
  cidr_ip           = "0.0.0.0/0"
}