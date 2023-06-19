provider "aws" {
	region = "ap-southeast-1"
}
resource "aws_instance" "sample"  {
	ami = "ami-052f483c20fa1351a"
	instance_type = lookup(var.ins_type,terraform.workspace)
}

variable "ins_type" {
	type = map
	default = {
	default = "t2.micro"
	prd = "t2.nano"
	dev = "t2.small"
	}
}
