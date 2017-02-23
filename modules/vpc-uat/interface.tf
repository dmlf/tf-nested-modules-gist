variable "region"  {
  description = "The AW region."
  default = "us-west-1"
}

variable "environment" {
    default = "uat"
}

variable "key_name" {
  default = "dmlf"
  description = "The AWS key pair to use for resources."
}

variable "vpc_cidr" {
  default = "10.128.0.0/16"
  description = "The CIDR of the VPC."
}

variable "public_subnets" {
  default     = ["10.128.0.0/24", "10.128.64.0/24"]
  description = "The list of public subnets to populate."
}

variable "private_subnets" {
  default     = ["10.128.192.0/21" , "10.128.200.0/21"]
  description = "The list of private subnets to populate."
}
variable "vpc_id" {
  default = ""
  description = "The VPC ID to launch in"
}
variable "peer_vpc_id" {
  default = "vpc-1234"
  description = "ID of the VPC to peer with ( must be in the same region )"
}

variable "peer_vpc_owner_id" {
  default = ""
}
output "vpc_id" {
  value = "${module.vpc.vpc_id}"
}

output "vpc_cidr" {
  value = "${module.vpc.vpc_cidr}"
}
