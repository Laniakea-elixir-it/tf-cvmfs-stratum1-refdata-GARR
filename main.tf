resource "openstack_compute_instance_v2" "my_instance" {
  name            = "${var.instance_name}"
  image_name      = "${var.image}"
  flavor_name     = "${var.flavor}"
  key_pair        = "${var.keypair}"
  security_groups = ["default","ssh","icmp","refdata-cvmfs"]
  network {
    name = "${var.network_name}"
  }
}

resource "openstack_networking_floatingip_v2" "fip" {
  pool       = "${var.pool}"
}

resource "openstack_blockstorage_volume_v2" "data-galaxyproject" {
  name = "${var.volume_name}"
  size = "${var.volume_size}"
}

resource "openstack_compute_volume_attach_v2" "data-galaxyproject" {
  instance_id = "${openstack_compute_instance_v2.my_instance.id}"
  volume_id = "${openstack_blockstorage_volume_v2.data-galaxyproject.id}"
  device = "${var.device}"
}

resource "openstack_compute_floatingip_associate_v2" "fip" {
  instance_id = "${openstack_compute_instance_v2.my_instance.id}"
  floating_ip = "${openstack_networking_floatingip_v2.fip.address}"
}