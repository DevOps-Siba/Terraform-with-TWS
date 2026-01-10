variable "aws_region" {
  description = "AWS region where resources will be provisioned"
  default     = "us-east-2"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  default     = "ami-085f9c64a9b75eed5"
}

variable "instance_type" {
  description = "Instance type for the EC2 instance"
  default     = "t2.micro"
}

variable "my_enviroment" {
  description = "Instance type for the EC2 instance"
  default     = "dev"
}

#ensure when we use local block for multiple instance we should ensure that the count =3 is removed for the resource block
locals {  
  instances = {
      "key" = "instace_1"
      "key2" = "instance_2"

  } 
}

