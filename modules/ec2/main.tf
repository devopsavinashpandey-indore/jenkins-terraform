resource "aws_instance" "web" {

  ami           = "ami-03bb6d83c60fc5f7c"
  instance_type = "t2.micro"

  vpc_security_group_ids = [
    var.security_group_id
  ]

  tags = {
    Name = "Terraform-Jenkins-Server"
  }
}
