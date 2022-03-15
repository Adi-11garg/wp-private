resource "aws_eip" "lb" {
  instance = aws_instance.web.id
  vpc      = true
}

resource "aws_instance" "web" {
  ami           = "ami-0851b76e8b1bce90b " # us-west-2
  instance_type = "t2.small"

  subnet_id = aws_subnet.public_subnet1.id
  security_groups = [ aws_security_group.asg_sg.id, ]
  key_name = atishay
}