resource "aws_instance" "counts"{

    count = 3
    ami = var.ami_id
    instance_type = var.instance_name

    tags = {

        Name = var.ec2_names[count.index]
    }
    
}

resource "aws_route53_record" "devopspractice" {
        count = 3
        zone_id = var.hosted_zone_id
        name    = "${var.ec2_names[count.index]}.${var.domain}"
        type    = "A"
        ttl     = 300
        records = [aws_instance.counts[count.index].private_ip]
}