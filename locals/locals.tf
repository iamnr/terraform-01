locals {

    ami_id = "Z06938521TAW7XC4M3X9B"
    instance_name = var.isProd ? "t2.micro" : "t3.micro"

}