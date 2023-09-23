terraform {
  backend "s3" {
    bucket = "mybucket"
    key    = "demo/env/terraform.tfstate"
    region = "us-east-1"
  }
}
