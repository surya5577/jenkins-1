provider "aws" {
  access_key = "AKIAU77CZHPQ7EDO43FF"
  secret_key = "8UoJW+5xvapTT40z9sWew0UGuxZP+m38Lhtc5xU2"
  region     = "us-east-2"
}

resource "aws_instance" "example11" {
  ami           = "ami-0d5d9d301c853a04a"
  instance_type = "t2.micro"
}

resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket11"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_iam_user" "lb1" {
  name = "loadbalancer"
  path = "/system/"

  tags = {
    tag-key = "tag-value"
  }
}

resource "aws_iam_group" "developers" {
  name = "developers"
  path = "/users/"
}



resource "aws_iam_group" "group" {
  name = "developers11"
}

resource "aws_iam_user" "user_one" {
  name = "loadbalancer11"
}

resource "aws_iam_user" "user_two" {
  name = "aaa11"

}





resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}



resource "aws_subnet" "main" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Main"
  }
}
