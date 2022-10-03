resource "aws_instance" "my_public_server" {
  ami                    = data.aws_ami.ami1.id
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.public_sg.id]
  key_name               = "talent-academy-ac2.pub"

  tags = {
      Name = "ec2_public"
  }
}