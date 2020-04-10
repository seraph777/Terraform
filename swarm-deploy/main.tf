### main.tf
# Specify the provider and access details
provider "aws" {
  region = "${var.region}"
  #caso precise de assume role, se não for seu caso remova esta parte
  assume_role {
        role_arn = "arn:aws:iam::999666555444:role/devops-monster-team"
        
    }
}
resource "aws_instance" "master" {
  ami = "${var.ami}"
  instance_type = "${var.instance_type}"
  key_name = "${var.key_name}"
  user_data = "${file("${var.bootstrap_path}")}"
  vpc_security_group_ids = ["${aws_security_group.sgswarm.id}"]
tags =  {
    Name  = "master"
  }
}
resource "aws_instance" "worker1" {
  ami = "${var.ami}"
  instance_type = "${var.instance_type}"
  key_name = "${var.key_name}"
  user_data = "${file("${var.bootstrap_path}")}"
  vpc_security_group_ids = ["${aws_security_group.sgswarm.id}"]
tags = {
    Name  = "worker 1"
  }
}
resource "aws_instance" "worker2" {
  ami = "${var.ami}"
  instance_type = "${var.instance_type}"
  key_name = "${var.key_name}"
  user_data = "${file("${var.bootstrap_path}")}"
  vpc_security_group_ids = ["${aws_security_group.sgswarm.id}"]
tags = {
    Name  = "worker 2"
  }
}
resource "aws_instance" "worker3" {
  ami = "${var.ami}"
  instance_type = "${var.instance_type}"
  key_name = "${var.key_name}"
  user_data = "${file("${var.bootstrap_path}")}"
  vpc_security_group_ids = ["${aws_security_group.sgswarm.id}"]
tags = {
    Name  = "worker 3"
  }
}