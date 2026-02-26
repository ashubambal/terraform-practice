terraform {
  backend "s3" {
    bucket         = "terraform-practice-dev-bucket"
    key            = "dev/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-practice-dev-lock-table"
    encrypt        = true
  }
}