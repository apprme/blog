data "aws_route53_zone" "zone" {
  name         = "${var.zone}."
  private_zone = false
}

resource "aws_route53_record" "cname" {
  zone_id  = data.aws_route53_zone.zone.id
  name     = var.domain_name_source
  type     = "CNAME"
  ttl      = "60"
  records  = [var.domain_name_target]
}
