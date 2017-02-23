module "vpc" {
  source = "../tf_vpc"
  environment     = "${var.environment}"
  region          = "${var.region}"
  key_name        = "${var.key_name}"
  public_subnets  = ["${var.public_subnets}"]
  private_subnets = ["${var.private_subnets}"]
  vpc_id          = "${module.vpc.vpc_id}"
  vpc_cidr        = "${var.vpc_cidr}"
}

resource "aws_vpc_peering_connection" "uat_peering" {
    peer_owner_id   = "${var.peer_vpc_owner_id}"
    peer_vpc_id     = "${var.peer_vpc_id}"
    vpc_id          = "${module.vpc.vpc_id}"
}
