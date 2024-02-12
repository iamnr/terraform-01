resource "aws_instance" "Example"   {

    ami = var.ami_id 
    instance_type = var.instance_type

    tags = {
        Name = "test"
    }

    security_groups = [aws_security_group.allow_all_terraform.name]
}


