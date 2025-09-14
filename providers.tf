terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

terraform {
  backend "remote" {
    organization = "kyma"
    workspaces {
      name = "learning-terraform"
    }
  }
}
