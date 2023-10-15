terraform {
  backend "s3" {
    bucket = "kaizen-bucket123"
    key    = "kaizen/terraform.tfstate"
    region = "us-east-2"
    dynamodb_table = "lock-state"
  }
}
