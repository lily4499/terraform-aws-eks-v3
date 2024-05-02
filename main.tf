// Configure Terraform providers
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
// Define AWS provider configuration
provider "aws" {
  region = var.region  
}
// Include modules for specific configurations

module "eks_cluster" {
  source = "./eks-module"
  region         = var.region 
  vpc_id         = "aws_vpc.eks_vpc.id"
  vpc_cidr       = var.vpc_cidr
  dns_hostnames  = var.dns_hostnames
  dns_support    = var.dns_support
  pub_one_cidr   = var.pub_one_cidr
  pub_two_cidr   = var.pub_two_cidr
  priv_one_cidr  = var.priv_one_cidr
  priv_two_cidr  = var.priv_two_cidr
  cluster_name                = var.cluster_name
  eks_version                 = var.eks_version
  ami_type                    = var.ami_type
  instance_types              = var.instance_types
  capacity_type               = var.capacity_type
}