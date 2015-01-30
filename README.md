TERRAFORM
=========

Premise
-------
We currently manage key infrastructure components of our AWS accounts by hand, via the AWS website.  This has introduced discrepencies between production and test environments as well as orfan objects and elements without an obvious use case.

Terraform can standardize our AWS accounts and their respective networks while paving a way for introducing another cloud as a provider.


## Documentation:
https://www.terraform.io/docs/index.html

### Examples:
https://github.com/hashicorp/terraform/tree/master/examples/aws-two-tier

### Cross-provider:
*  Wave with AWS and GSC
   http://weaveblog.com/2014/12/18/automated-provisioning-of-multi-cloud-weave-network-terraform/

*  Heroku & DNSimple
   https://github.com/hashicorp/terraform/blob/master/examples/cross-provider/main.tf

## Options to manage our setup

Config for each account and region
A separate directory with its own configs and state

Identical regions per account
  Ex.:
  export REGION=us-west-1 && terraform plan -var "aws_region=$REGION" -state=$REGION.tfstate .

Cross-provider, modularized configuration
  https://github.com/hashicorp/terraform/issues/451#issuecomment-61475460
