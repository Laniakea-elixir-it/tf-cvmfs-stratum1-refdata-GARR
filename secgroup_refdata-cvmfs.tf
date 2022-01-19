resource "openstack_networking_secgroup_v2" "refdata-cvmfs" {
  name                 = "refdata-cvmfs"
  description          = "[tf] Allow refdata-cvmfs"
  delete_default_rules = "true"
}

resource "openstack_networking_secgroup_rule_v2" "refdata-cvmfs_rule1" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 49999
  port_range_max    = 49999
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = "${openstack_networking_secgroup_v2.refdata-cvmfs.id}"
}

resource "openstack_networking_secgroup_rule_v2" "refdata-cvmfs_rule2" {
  direction         = "egress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 80
  port_range_max    = 80
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = "${openstack_networking_secgroup_v2.refdata-cvmfs.id}"
}

resource "openstack_networking_secgroup_rule_v2" "refdata-cvmfs_rule3" {
  direction         = "egress"
  ethertype         = "IPv6"
  security_group_id = "${openstack_networking_secgroup_v2.refdata-cvmfs.id}"
}

resource "openstack_networking_secgroup_rule_v2" "refdata-cvmfs_rule4" {
  direction         = "egress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  security_group_id = "${openstack_networking_secgroup_v2.refdata-cvmfs.id}"
}

resource "openstack_networking_secgroup_rule_v2" "refdata-cvmfs_rule5" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 80
  port_range_max    = 80
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = "${openstack_networking_secgroup_v2.refdata-cvmfs.id}"
}