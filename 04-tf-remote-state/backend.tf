terraform {
  backend "s3" {
    bucket = "mysrikanth"
    key    = "demo/env/terraform.tfstate"
    region = "us-east-1"
  }
}
