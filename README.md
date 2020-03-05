# cool-dns-57.69.64.in-addr.arpa #

[![GitHub Build Status](https://github.com/cisagov/cool-dns-57.69.64.in-addr.arpa/workflows/build/badge.svg)](https://github.com/cisagov/cool-dns-57.69.64.in-addr.arpa/actions)

This repository contains a Terraform configuration that will provision the DNS zone
`57.69.64.in-addr.arpa` within the COOL.  It creates an IAM role that allows sufficient
permissions to modify resources records in this zone.  This role has a trust
relationship with the users account.

## Usage ##

1. Run the command `terraform init`.
1. Run the command `terraform apply`.

## Inputs ##

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| aws_region | The AWS region to communicate with. | `string` | `us-east-1` | no |
| route53resourcechange_role_description | The description to associate with the IAM role (as well as the corresponding policy) that allows sufficient permissions to modify resource records in the DNS zone. | `string` | `Allows sufficient permissions to modify resource records in the DNS zone.` | no |
| route53resourcechange_role_name | The name to assign the IAM role (as well as the corresponding policy) that allows sufficient permissions to modify resource records in the DNS zone. | `string` | `Route53ResourceChange-57.69.64.in-addr.arpa` | no |
| tags | Tags to apply to all AWS resources created | `map(string)` | `{"Application": "COOL - DNS - 57.69.64.in-addr.arpa", "Team": "VM Fusion - Development", "Workspace": "production"}` | no |

## Outputs ##

| Name | Description |
|------|-------------|
| rev_57_69_64_in-addr_arpa_zone | The 57.69.64.in-addr.arpa public hosted zone. |
| route53resourcechange_role | IAM role that allows sufficient permissions to modify resource records in the 57.69.64.in-addr.arpa zone. |

## Contributing ##

We welcome contributions!  Please see [here](CONTRIBUTING.md) for
details.

## License ##

This project is in the worldwide [public domain](LICENSE).

This project is in the public domain within the United States, and
copyright and related rights in the work worldwide are waived through
the [CC0 1.0 Universal public domain
dedication](https://creativecommons.org/publicdomain/zero/1.0/).

All contributions to this project will be released under the CC0
dedication. By submitting a pull request, you are agreeing to comply
with this waiver of copyright interest.
