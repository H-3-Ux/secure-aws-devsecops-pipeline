terraform {
  backend "s3" {
    bucket       = "secure-devsecops-tfstate-508484460921"
    key          = "devsecops/terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true
  }
}
