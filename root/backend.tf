terraform {
  backend "s3" {
    bucket = "tfstate-mai-101"
    key    = "backend/2tierapplication.tfstate"
    region = "us-east-1"
    dynamodb_table = "remote-backend"
  }
}