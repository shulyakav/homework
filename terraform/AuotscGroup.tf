###Create autoscaling group for DevOps HomeWork

resource "aws_autoscaling_group" "hw" {
  name                 = "hw-asg"
  launch_configuration = "${aws_launch_configuration.as_conf.name}"
  min_size             = 1
  max_size             = 2
  availability_zones   = ["${data.aws_availability_zones.all.names}"]
  load_balancers = ["${aws_elb.hw.name}"]
  health_check_type = "ELB"
  lifecycle {
    create_before_destroy = true
  }
}
