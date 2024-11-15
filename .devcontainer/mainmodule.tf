//A module consists of a collection of .tf and/or .tf.json files kept together in a directory. Modules are the main way to package and reuse resource configurations with Terraform. Every Terraform configuration has at least one module, known as its root module, which consists of the resources defined in the .tf files in the main working directory.

//Note
//we need to create separate main.tf file to create infra

provider "aws" {
  region = "us-east-1"
}

module "ec2_instance" {
  source = "../ModulesEC2Instance" //specify the correct path of the infra for the Module
  ami_value = "ami-053b0d53c279acc90" # replace this
  instance_type_value = "t2.micro" # replace this
}