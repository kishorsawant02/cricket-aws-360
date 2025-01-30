# Customer 360 Dashboard.

## Steps to use.

1. Clone repository
2. Set Enviroment varibles.

```bash
   export AWS_ACCESS_KEY_ID=""
   export AWS_SECRET_ACCESS_KEY=""
   export AWS_SESSION_TOKEN=""
```

3. run terraform init

- This will create S3 bucket and Dynamo table for state locker.

4. create backend.tf file, add below content to set backend.

```bash
   terraform {
      backend "s3" {
         encrypt = true
         bucket = "cricket-tf-backend"
         dynamodb_table = "cricket-tf-state-lock"
         key = "terraform.tfstate"
         region = "us-east-1"
      }
   }
```

5. run terraform init to initialize backend
