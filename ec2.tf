resource "aws_instance" "my_instance" {
  ami                    = var.ami
  instance_type          = var.instance_type
  count                  = 1
  vpc_security_group_ids = [aws_security_group.security_group.id]
  key_name               = "terraform_key"
  user_data              = file("apache.sh")
  tags = {
    Name = "my_instance"
  }
}