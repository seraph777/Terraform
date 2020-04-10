### variable.tf
variable "region" {
  description = "AWS region que será setado o cluster swarm"
  default = "us-east-1"
}
variable "ami" {
  description = "Amazon Linux AMI Ubuntu Server 16.04 LTS"
  default = "ami-08bc77a2c7eb2b1da"
}
variable "instance_type" {
  description = "Instance type"
  default = "t2.micro"
}
variable "key_path" {
  description = "SSH Public Key path"
  default = "docker-key.pem"
}
variable "key_name" {
  description = "Keypair que será usado"
  default = "docker-key"
}
variable "bootstrap_path" {
  description = "Script para instalar o Docker Engine"
  default = "install_docker_machine_compose.sh"
}