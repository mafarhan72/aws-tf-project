terraform {
  backend "s3" {
    bucket         = "tf-resources-farhan123"
    region         = "ca-central-1"
    key            = "github-actions/terraform.tfstate"
    encrypt        = true
    dynamodb_table = "tf-resources-gha-lock"

  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>6.19"
    }
  }

}

provider "aws" {
  region = var.aws_region
}