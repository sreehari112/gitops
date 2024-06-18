terraform {
  backend "s3" {
    bucket = "k1-state-store-managementcluster-a4qfpq"
    key    = "terraform/vault/terraform.tfstate"

    region  = "ap-south-1"
    encrypt = true
  }
  required_providers {
    vault = {
      source = "hashicorp/vault"
    }
  }
}

provider "vault" {
  skip_tls_verify = "true"
}
