terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.7.0"
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
  # Configuration options
}
