output "vpc_id" {
  value = alicloud_vpc.vpc.id
}

output "security_group_id" {
  value = alicloud_security_group.security_group.id
}

output "subnet_id" {
  value = alicloud_vswitch.subnet.id
}

output "zone_id" {
  value = data.alicloud_zones.foo.zones.0.id
}