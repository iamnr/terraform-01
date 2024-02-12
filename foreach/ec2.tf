resource "aws_instance" "roboshop" {

    for_each = var.instance
    ami = var.ami_id
    instance_type = each.value

    tags = {

        Name = each.key
    }
}

resource "aws_route53_record" "roboshop_records" {

  for_each = aws_instance.roboshop
  zone_id = var.zoneid
  name    = "${each.key}.${var.domain}"
  type    = "A"
  ttl     = 1
  records = [ each.key == "web" ? each.value.public_ip : each.value.private_ip ]
}

 output "roboshop" {

    value = aws_instance.roboshop
 }