#variable "count" {
#  default = "1"
#}
variable "ami" {
  default = "ami-042b3411289ccd"
}
variable "instance_type" {
  default = "t2.medium"
}
variable "Name" {
  default = "Terraform-k8s"
}
variable "key_name" {
  default = "open-terraform"
}
variable "security_group_id" {
  default = "sg-0c2fe036ede5b16"
}
variable "subnet_id" {
  default = "subnet-0c1f1515b855597"
}
variable "public_ip" {
  default = "true"
}
variable "root_volume_size" {
  default = "20"
}
variable "ebs_device_name" {
  default = "/dev/xvda"
}
variable "ebs_volume_size" {
  default = "30"
}
