#Create Launch Configuration for DevOps HomeWork

resource "aws_launch_configuration" "as_conf" {
  name_prefix   = "HomeWork-lc-"
  image_id      = "${data.aws_ami.servergo_ami.id}"
  key_name               = "Test2"
  security_groups  = ["${aws_security_group.hwsc.id}"]
  instance_type = "t2.micro"

  lifecycle {
    create_before_destroy = true
  }
}

