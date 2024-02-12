variable "ami_id_practice"{

    type = string
    default = "ami-0f3c7d07486cad139" 

}

variable "instance_type_practice"{

    type = string
    default = "t2.micro"
}

variable "sg_cidr_practice"{

    type = list
    default = ["0.0.0.0/0"]
}