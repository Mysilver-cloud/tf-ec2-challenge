# Create private instances

resource "aws_instance" "my_private_server1" {
  ami                    = data.aws_ami.ami1.id
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.private1.id
  vpc_security_group_ids = [aws_security_group.private_sg.id]
  key_name               = "talent-academy-ac2.pub"

  tags = {
      Name = "ec2_private1"
  }
}

resource "aws_instance" "my_private_server2" {
  ami                    = data.aws_ami.ami1.id
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.private1.id
  vpc_security_group_ids = [aws_security_group.private_sg.id]
  key_name               = "talent-academy-ac2.pub"

  tags = {
      Name = "ec2_private2"
  }
}

resource "aws_instance" "my_private_server3" {
  ami                    = data.aws_ami.ami1.id
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.private1.id
  vpc_security_group_ids = [aws_security_group.private_sg.id]
  key_name               = "talent-academy-ac2.pub"

  tags = {
      Name = "ec2_private3"
  }
}