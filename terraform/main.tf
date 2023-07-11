terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.7.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.5.1"
    }
  }
  cloud {
    organization = "elykkyle"
    workspaces {
      name = "cloud-resume-frontend"
    }
  }

}
provider "aws" {
  region = "us-east-2"
}


resource "random_id" "s3" {
  byte_length = 1
}

resource "aws_s3_bucket" "website" {
  bucket = "kyle.mn-${random_id.s3.id}"
}
