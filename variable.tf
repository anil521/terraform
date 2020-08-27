variable "region" {

  default = "us-east-1"

}

variable "vpc_cidr" {
  type    = string
  default = "10.20.0.0/16"

}
variable "web_ec2_count" {
  default = 2
}
variable "web_instance_type" {
  default = "t2.micro"
}
variable "web_tags" {
  type = map
  default = {
    Name = "webserver"
  }
}

variable "web_amis" {
  type = map
  default = {
    us-east-1 = "ami-0761dd91277e34178"
    us-east-2 = "ami-0f4aeaec5b3ce9152"
  }
}
variable "my_app_s3_bucket" {
  default = "anil-bucket-12345-dev"
}
