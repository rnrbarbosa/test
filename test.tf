# Configure the AWS Provider
provider "aws" {
    region = "us-west-2"
}


module "banana" {
  source = "github.com/nuxeo/cloud-aws-stack"

  stack_name = "banana"
  vpc_id="vpc-8beb14ec"
  public_subnets = ["10.0.20.0/24"]
  private_subnets = ["10.0.21.0/24"]
  private_db_subnets = ["10.0.200.0/24","10.0.201.0/24"]
  public_key_path="/Users/rnrbarbosa/.ssh/id_rsa.pub"
}
