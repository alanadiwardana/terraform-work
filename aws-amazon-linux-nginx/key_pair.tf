resource "aws_key_pair" "my_key_pair" {
  key_name   = "my_key_pair"
  public_key = "ssh-rsa <PUBLIC_KEY>"
}