# Who is the cloud provider
provider "aws" {

# location of aws
  region = var.aws_region 
  
}
# to download required dependencies
# create a service/resource on the cloud - ec2 on AWS

resource "aws_instance" "tech254-lukew-iac-test" {
  ami = var.web_app_ami_id 
  instance_type = "t2.micro"
  tags = {
    Name = var.name
  }


}
