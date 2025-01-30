terraform {
      backend "s3" {
         encrypt = true
         bucket = "cricket-tf-backend"
         dynamodb_table = "cricket-tf-state-lock"
         key = "terraform.tfstate"
         region = "us-east-1"
      }
   }