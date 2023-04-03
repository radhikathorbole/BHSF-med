terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
provider "aws" {
  region     = "us-east-2"
  access_key = "AKIAVGNSTFU2YAVG6RVG"
  secret_key = "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"
}