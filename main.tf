resource "aws_instance" "TestVM" {
ami = "${var.aws_amis}"
key_name = "${var.key_file}"
instance_type = "${var.instance_type}"
vpc_security_group_ids = ["${aws_security_group.TestVM-sg.id}"]
root_block_device { delete_on_termination = true }
associate_public_ip_address = true
     connection {
    type = "ssh"
    user = "ubuntu"
        host = "${aws_instance.TestVM.public_ip}"
#    private_key = "${file(var.key_path)}"
     }
   provisioner "remote-exec" {
   inline = [
      "sudo apt-get update"
     ]
  }


}
output "ec2_global_ips" {
  value = ["${aws_instance.TestVM.public_ip}"]
}

