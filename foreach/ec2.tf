resource "aws_instance" "roboshop" {

    ami = var.ami_id
    for_each = var.instances
    instance_type = each.value
    tags = {

      Name = each.key
    }
}

resource "aws_route53_record" "Roboshop_route53" {

  for_each = aws_instance.roboshop
  zone_id = var.zoneid
  name = "${each.key}.${var.domain}"
  type = "A"
  ttl = 1
  records = [ each.key == "web" ? each.value.public_ip : each.value.private_ip ]

}