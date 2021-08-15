provider "aws" {
  region = "eu-central-1"
}

provider "aws" {
  alias = "virginia"
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "blog.appr.me.tf"
    key    = "prod"
    region = "eu-central-1"
  }
}

module "cname" {
  source = "../modules/cname/"
  zone               = "appr.me"
  domain_name_source = "blog"
  domain_name_target = "apprme.github.io"
}