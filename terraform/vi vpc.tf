module "project1_vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "project1_vpc"

  cidr = "10.0.0.0/16"

  azs             = ["ap-northeast-2a"]
  public_subnets  = ["10.0.10.0/24", "10.0.20.0/24"]
  private_subnets = ["10.0.30.0/24"]

  create_database_subnet_group = true

  create_igw = true

  enable_nat_gateway = true
  single_nat_gateway = true

}
