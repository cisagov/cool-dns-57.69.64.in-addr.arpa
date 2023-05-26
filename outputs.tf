output "rev_57_69_64_in-addr_arpa_zone" {
  description = "The 57.69.64.in-addr.arpa public hosted zone."
  value       = aws_route53_zone.rev_57_69_64_in-addr_arpa
}

output "route53resourcechange_role" {
  description = "IAM role that allows sufficient permissions to modify resource records in the 57.69.64.in-addr.arpa zone."
  value       = aws_iam_role.route53resourcechange_role
}
