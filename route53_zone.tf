# ------------------------------------------------------------------------------
# Create the 57.69.64.in-addr.arpa zone and configure it with our primary reusable
# delegation set.
# ------------------------------------------------------------------------------
resource "aws_route53_zone" "rev_57_69_64_in-addr_arpa" {
  provider = aws.dnsprovisionaccount

  delegation_set_id = data.terraform_remote_state.dns.outputs.primary_delegation_set.id
  name              = "57.69.64.in-addr.arpa."
  tags              = var.tags
}
