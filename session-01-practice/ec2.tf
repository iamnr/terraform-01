resource "aws_instance" "Example_Practice"{

    ami = var.ami_id_practice
    instance_type = var.instance_type_practice
    security_groups = [aws_security_group.allow_all_terraform_practice.name]

    tags = {

        Name = "test_pratice"
    }
}