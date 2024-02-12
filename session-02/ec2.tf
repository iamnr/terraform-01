resource "aws_instance" "mongodb" {

    ami = var.ami_id
    instance_type = var.instance_name == "MongoDB" ? "t2.micro" : "t3.micro" 
    tags = {
        Name = "Conditions"
    }

}