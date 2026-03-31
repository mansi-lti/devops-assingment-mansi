data "aws_ami" "amazon_linux" {
  most_recent = true
  owners = ["amazon"]

  filters {
    name = "name"
    values = ["amzn2-ami-hvm-*"]
  }
}
