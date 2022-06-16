resource "aws_security_group" "all-sg" {
  name        = "all-sg"
  description = "Allow all "
  vpc_id      = module.project1_vpc.vpc_id

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
  }

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }
}
