terraform {
  backend "s3" {
    dynamodb_table = "locking-table"
    bucket = "remote-backendstate"
    key     = "terraform.tfstate"
    region  = "eu-central-1"
  }
}