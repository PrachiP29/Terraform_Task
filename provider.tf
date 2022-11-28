terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
provider "aws" {
  region  = "eu-west-1"
  profile = "PrachiAWS"
}

provider "aws" {
  alias   = "central"
  region  = "eu-central-1"
  profile = "PrachiAWS"
}
