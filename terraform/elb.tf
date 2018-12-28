### Creat ELB for DevOps HomeWork
resource "aws_elb" "hw" {
  name = "hw-asg-example"
  security_groups = ["${aws_security_group.hwsc.id}"]
  availability_zones = ["${data.aws_availability_zones.all.names}"]
  health_check {
    healthy_threshold = 2
    unhealthy_threshold = 2
    timeout = 3
    interval = 30
    target = "HTTP:8080/"
  }
  listener {
    lb_port = 8080
    lb_protocol = "http"
    instance_port = "8080"
    instance_protocol = "http"
  }
}
