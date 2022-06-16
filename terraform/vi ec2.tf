resource "aws_key_pair" "project1_key" {
  key_name   = "project1_key"
  public_key = file("/home/vagrant/.ssh/id_rsa.pub")
}

resource "aws_instance" "jenkins" {
  ami                    = "ami-058165de3b7202099"
  availability_zone      = module.project1_vpc.azs[0]
  instance_type          = "t2.medium"
  vpc_security_group_ids = [aws_security_group.all-sg.id]
  subnet_id              = module.project1_vpc.public_subnets[0]
  key_name               = aws_key_pair.project1_key.key_name

  tags = {
    Name = "jenkins"
  }
}


resource "aws_instance" "ansible" {
  ami                    = "ami-058165de3b7202099"
  availability_zone      = module.project1_vpc.azs[0]
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.all-sg.id]
  subnet_id              = module.project1_vpc.public_subnets[0]
  key_name               = aws_key_pair.project1_key.key_name

  tags = {
    Name = "ansible"
  }
}

resource "aws_instance" "docker" {
  ami                    = "ami-058165de3b7202099"
  availability_zone      = module.project1_vpc.azs[0]
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.all-sg.id]
  subnet_id              = module.project1_vpc.public_subnets[0]
  key_name               = aws_key_pair.project1_key.key_name

  tags = {
    Name = "docker"
  }
}


resource "aws_instance" "k8s" {
  ami                    = "ami-058165de3b7202099"
  availability_zone      = module.project1_vpc.azs[0]
  instance_type          = "t2.medium"
  vpc_security_group_ids = [aws_security_group.all-sg.id]
  subnet_id              = module.project1_vpc.public_subnets[0]
  key_name               = aws_key_pair.project1_key.key_name

  tags = {
    Name = "k8s"
  }
}
