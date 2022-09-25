# cool-dns-57.69.64.in-addr.arpa #

[![GitHub Build Status](https://github.com/cisagov/cool-dns-57.69.64.in-addr.arpa/workflows/build/badge.svg)](https://github.com/cisagov/cool-dns-57.69.64.in-addr.arpa/actions)

This repository contains a Terraform configuration that will provision the DNS zone
`57.69.64.in-addr.arpa` within the COOL.  It creates an IAM role that allows sufficient
permissions to modify resources records in this zone.  This role has a trust
relationship with the users account.

## Usage ##

1. Run the command `terraform init`.
1. Run the command `terraform apply`.

## Requirements ##

| Name | Version |
|------|---------|
| terraform | ~> 1.0 |
| aws | ~> 3.38 |

## Providers ##

| Name | Version |
|------|---------|
| aws | ~> 3.38 |
| aws.dnsprovisionaccount | ~> 3.38 |
| aws.organizationsreadonly | ~> 3.38 |
| aws.route53resourcechange | ~> 3.38 |
| terraform | n/a |

## Modules ##

No modules.

## Resources ##

| Name | Type |
|------|------|
| [aws_iam_policy.route53resourcechange_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_role.route53resourcechange_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.route53resourcechange_policy_attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_route53_record.rev_1_PTR](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_route53_record.rev_2_PTR](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_route53_record.rev_3_PTR](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_route53_record.rev_4_PTR](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_route53_zone.rev_57_69_64_in-addr_arpa](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_zone) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_iam_policy_document.assume_role_doc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.route53resourcechange_doc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_organizations_organization.cool](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/organizations_organization) | data source |
| [terraform_remote_state.dns](https://registry.terraform.io/providers/hashicorp/terraform/latest/docs/data-sources/remote_state) | data source |
| [terraform_remote_state.master](https://registry.terraform.io/providers/hashicorp/terraform/latest/docs/data-sources/remote_state) | data source |

## Inputs ##

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| aws\_region | The AWS region to deploy into (e.g. us-east-1). | `string` | `"us-east-1"` | no |
| route53resourcechange\_role\_description | The description to associate with the IAM role (as well as the corresponding policy) that allows sufficient permissions to modify resource records in the DNS zone. | `string` | `"Allows sufficient permissions to modify resource records in the DNS zone."` | no |
| route53resourcechange\_role\_name | The name to assign the IAM role (as well as the corresponding policy) that allows sufficient permissions to modify resource records in the DNS zone. | `string` | `"Route53ResourceChange-57.69.64.in-addr.arpa"` | no |
| tags | Tags to apply to all AWS resources created. | `map(string)` | ```{ "Application": "COOL - DNS - 57.69.64.in-addr.arpa", "Team": "VM Fusion - Development", "Workspace": "production" }``` | no |

## Outputs ##

| Name | Description |
|------|-------------|
| rev\_57\_69\_64\_in-addr\_arpa\_zone | The 57.69.64.in-addr.arpa public hosted zone. |
| route53resourcechange\_role | IAM role that allows sufficient permissions to modify resource records in the 57.69.64.in-addr.arpa zone. |

## Notes ##

Running `pre-commit` requires running `terraform init` in every directory that
contains Terraform code. In this repository, this is just the main directory.

## Contributing ##

We welcome contributions!  Please see [`CONTRIBUTING.md`](CONTRIBUTING.md) for
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
