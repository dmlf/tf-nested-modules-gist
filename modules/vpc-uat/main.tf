module "vpc" {
  source = "../tf_aws_vpc"
  name            = "${var.name}"
  azs             = "${var.azs}"
  public_subnets  = ["${var.public_subnets}"]
  private_subnets = ["${var.private_subnets}"]
  cidr            = "${var.vpc_cidr}"
}

resource "aws_vpc_peering_connection" "uat_peering" {
    peer_owner_id   = "${var.peer_vpc_owner_id}"
    peer_vpc_id     = "${var.peer_vpc_id}"
    vpc_id          = "${module.vpc.vpc_id}"
}
