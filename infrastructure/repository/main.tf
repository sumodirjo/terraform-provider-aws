terraform {
  backend "remote" {
    organization = "hashicorp-v2"

    workspaces {
      prefix = "terraform-provider-aws-"
    }
  }

  required_providers {
    github = {
      source  = "hashicorp/github"
      version = "3.1.0"
    }
  }

  required_version = ">= 0.13.5"
}

provider "github" {
  organization = "hashicorp"
}
