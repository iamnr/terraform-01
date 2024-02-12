resource "aws_security_group" "allow_all_terraform_practice"{

    name = "allow_all_terraform_practice"
    description = "Allow all ports"

    ingress {

        from_port = 0
        to_port = 0
        protocol = "tcp"
        cidr_blocks = var.sg_cidr_practice
    }

    egress {

        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = var.sg_cidr_practice
    }
}