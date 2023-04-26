resource "aws_security_group" "acesso_ssh" {
  name        = "acesso_ssh"
  description = "acesso_ssh"

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      =  var.cdirs_acesso_remoto
  }
  tags = {
    Name = "ssh"
  }
}

resource "aws_security_group" "acesso_ssh_us-east-2" {
  provider = "aws.us-east-2"
  name        = "acesso_ssh_us-east-2"
  description = "acesso_ssh_us-east-2"

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      =  var.cdirs_acesso_remoto
  }
  tags = {
    Name = "acesso_ssh_us-east-2"
  }
}