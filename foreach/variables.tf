variable "ami_id" {

    type = string
    default = "ami-0f3c7d07486cad139"
}

variable "instance" {

    type = map

    default = {

        web = "t2.micro"
        cart = "t2.micro"
        catalogue = "t2.micro"
    }
}


variable "zoneid" {

    type =string
    default = "Z06938521TAW7XC4M3X9B"
}

variable "domain" {

    type = string
    default = "devopspractice.site"

}