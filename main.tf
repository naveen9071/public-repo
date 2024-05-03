#Creating EC2 Instance
resource "aws_instance" "Terraform-k8s" {
#count                       = "${var.count}"
ami                         = "${var.ami}"
instance_type               = "${var.instance_type}"
vpc_security_group_ids      = ["${var.security_group_id}"]
subnet_id                   = "${var.subnet_id}"
associate_public_ip_address = "${var.public_ip}"
key_name                    = "${var.key_name}"

#root disk
root_block_device {
  volume_size           = "${var.root_volume_size}"
  volume_type           = "gp2"
  encrypted             = true
  delete_on_termination = true
}

#data disk
#ebs_block_device {
#  device_name           = "${var.ebs_device_name}"
 # volume_size           = "${var.ebs_volume_size}"
  #volume_type           = "gp2"
  #encrypted             = true
  #delete_on_termination = true
#}

tags = {
  Name = "${var.Name}"
}
}
