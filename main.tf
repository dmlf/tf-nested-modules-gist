
provider "aws" {
    access_key = "${var.aws_access_key}"
    secret_key = "${var.aws_secret_key}"
    region = "${var.region}"
}

module "vpc-uat" {
  source = "modules/vpc-uat"
}

resource "aws_instance" "example" {
  ami = "ami-blabla"
  instance_type = "t2.micro"
  tags {
    Name = "tf-nested-module-${count.index}"
  }
  count = 3
}
