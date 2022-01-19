variable "instance_name" {
  default = "my_instance"
}

variable "image" {
  default = "Ubuntu 20.04 - GARR"
}

variable "flavor" {
  default = "m1.large"
}

variable "keypair" {
  default = "laniakea-robot"
}

variable "ssh_user_name" {
  default = "ubuntu"
}

variable "network_name" {
  default = "default"
}

variable "pool" {
  default = "floating-ip"
}

variable "volume_name" {
  default = "elixir-it-mirror-data"
}

variable "device" {
  default = "/dev/vdb"
}

variable "volume_size" {
  default = 10000
}