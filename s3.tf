resource "aws_s3_bucket" "my_bucket" {
  bucket = var.my_app_s3_bucket
  acl    = "private"
  //region = var.region
  tags = {
    Name         = "anil-s3-bucket"
    Environmennt = terraform.workspace
  }
}
