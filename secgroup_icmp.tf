resource "openstack_networking_secgroup_v2" "icmp" {
  name                 = "icmp"
  description          = "[tf] Allow icmp connection"
  delete_default_rules = "true"
}

resource "openstack_networking_secgroup_rule_v2" "icmp_rule1" {
  direction         = "egress"
  ethertype         = "IPv6"
  security_group_id = "${openstack_networking_secgroup_v2.icmp.id}"
}

resource "openstack_networking_secgroup_rule_v2" "icmp_rule2" {
  direction         = "egress"
  ethertype         = "IPv4"
  security_group_id = "${openstack_networking_secgroup_v2.icmp.id}"
}

resource "openstack_networking_secgroup_rule_v2" "icmp_rule3" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "icmp"
  security_group_id = "${openstack_networking_secgroup_v2.icmp.id}"
}