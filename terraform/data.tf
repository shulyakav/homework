### Datafile for DevOps HomeWork
data "aws_ami" "servergo_ami" {
  filter {
    name   = "name"
    values = ["server.go_*"]
  }
  most_recent = true
}

data "aws_availability_zones" "all" {}
