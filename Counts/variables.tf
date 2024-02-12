variable "ami_id" {

    type = string
    default = "ami-0f3c7d07486cad139" 
    

}

variable "instance_name" {

    type = string
    default = "t2.micro"

}

variable "ec2_names" {

        type = list
        default = ["web","catalogue","cart"]

}


variable "hosted_zone_id" {

    type = string
    default = "Z06938521TAW7XC4M3X9B"
}

variable "domain" {

    type = string
    default = "devopspractice.site"
}
