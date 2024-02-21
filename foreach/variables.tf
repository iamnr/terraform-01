variable "ami_id" {

    type = string
    default = "ami-0f3c7d07486cad139" 
}

variable "instances" {

    type = map
    default = {

        web = "t2.micro"
        catalogue = "t2.micro"
        cart = "t2.micro"

    }
}

variable "zoneid" {

    type = string
    default = "Z06938521TAW7XC4M3X9B"
}

variable "domain" {

    type = string
    default = "devopspractice.site"
}

variable "ingress" {

    type = list
    default = [
        {
            description = "Allowing port 80 from public"
            from_port = 80
            to_port = 80
            protocol = "tcp"
            cidr_blocks = [ "0.0.0.0/0" ]
        },
        {
            description = "Allowing port 443 from public"
            from_port = 443
            to_port = 443
            protocol = "tcp"
            cidr_blocks = [ "0.0.0.0/0" ]
        },
        {
            description = "Allowing port 22 from public"
            from_port = 22
            to_port = 22
            protocol = "tcp"
            cidr_blocks = [ "0.0.0.0/0" ]
        }
    ]
}