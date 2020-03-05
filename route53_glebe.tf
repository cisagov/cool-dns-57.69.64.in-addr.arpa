# ------------------------------------------------------------------------------
# Resource records that support the Glebe infrastructure.
# ------------------------------------------------------------------------------

resource "aws_route53_record" "rev_1_PTR" {
  zone_id = aws_route53_zone.rev_57_69_64_in-addr_arpa.zone_id
  name    = "1.${aws_route53_zone.rev_57_69_64_in-addr_arpa.name}"
  type    = "PTR"
  ttl     = 300
  records = ["router.ncats.cyber.dhs.gov."]
}

resource "aws_route53_record" "rev_2_PTR" {
  zone_id = aws_route53_zone.rev_57_69_64_in-addr_arpa.zone_id
  name    = "2.${aws_route53_zone.rev_57_69_64_in-addr_arpa.name}"
  type    = "PTR"
  ttl     = 300
  records = ["vip.ncats.cyber.dhs.gov."]
}

resource "aws_route53_record" "rev_3_PTR" {
  zone_id = aws_route53_zone.rev_57_69_64_in-addr_arpa.zone_id
  name    = "3.${aws_route53_zone.rev_57_69_64_in-addr_arpa.name}"
  type    = "PTR"
  ttl     = 300
  records = ["fw01.ncats.cyber.dhs.gov."]
}

resource "aws_route53_record" "rev_4_PTR" {
  zone_id = aws_route53_zone.rev_57_69_64_in-addr_arpa.zone_id
  name    = "4.${aws_route53_zone.rev_57_69_64_in-addr_arpa.name}"
  type    = "PTR"
  ttl     = 300
  records = ["fw02.ncats.cyber.dhs.gov."]
}
