provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "terraform-state-bucket" {
  bucket = "cricket-tf-backend"
}

resource "aws_s3_bucket_versioning" "terraform-state-bucket" {
  bucket = "cricket-tf-backend"
  versioning_configuration {
    status = "Enabled"
  }
}
resource "aws_dynamodb_table" "state_lock_table" {
  name           = "cricket-tf-state-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
}


data "aws_availability_zones" "available" {
  state = "available"
}

module "file" {
  source = "./file"
}
module "s3" {
  source = "./services/s3"
  ENVIROMENTS = var.ENVIROMENTS
  RESOURCE_TAGS = var.RESOURCE_TAGS
}
