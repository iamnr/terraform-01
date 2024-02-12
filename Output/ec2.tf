resource "aws_instance" "Output" {

    ami = var.ami_id
    instance_type =  var.instance_name
}


output "public_ip" {

    value = aws_instance.Output.public_ip
}