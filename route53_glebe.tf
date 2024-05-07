# ------------------------------------------------------------------------------
# Resource records that support the Glebe infrastructure.
# ------------------------------------------------------------------------------

resource "aws_route53_record" "rev_1_PTR" {
  provider = aws.route53resourcechange

  name    = "1.${aws_route53_zone.rev_57_69_64_in-addr_arpa.name}"
  records = ["router.ncats.cyber.dhs.gov."]
  ttl     = 300
  type    = "PTR"
  zone_id = aws_route53_zone.rev_57_69_64_in-addr_arpa.zone_id
}

resource "aws_route53_record" "rev_2_PTR" {
  provider = aws.route53resourcechange

  name    = "2.${aws_route53_zone.rev_57_69_64_in-addr_arpa.name}"
  records = ["vip.ncats.cyber.dhs.gov."]
  ttl     = 300
  type    = "PTR"
  zone_id = aws_route53_zone.rev_57_69_64_in-addr_arpa.zone_id
}

resource "aws_route53_record" "rev_3_PTR" {
  provider = aws.route53resourcechange

  name    = "3.${aws_route53_zone.rev_57_69_64_in-addr_arpa.name}"
  records = ["fw01.ncats.cyber.dhs.gov."]
  ttl     = 300
  type    = "PTR"
  zone_id = aws_route53_zone.rev_57_69_64_in-addr_arpa.zone_id
}

resource "aws_route53_record" "rev_4_PTR" {
  provider = aws.route53resourcechange

  name    = "4.${aws_route53_zone.rev_57_69_64_in-addr_arpa.name}"
  records = ["fw02.ncats.cyber.dhs.gov."]
  type    = "PTR"
  ttl     = 300
  zone_id = aws_route53_zone.rev_57_69_64_in-addr_arpa.zone_id
}
