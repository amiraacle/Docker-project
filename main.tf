provider "aws" {
    region = "us-east-1"
  
}
resource "aws_ecr_repository" "second-repo" {
  name                 = "second-app"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}