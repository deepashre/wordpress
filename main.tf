provider "aws" {
  region = var.aws_region
}
resource "aws_instance" "wp" { 
    ami = "ami-0adef6268736a8a10"
    instance_type = "t2.micro"
    key_name = "cloud-poc"
    
    tags = {
    Name = "wp-app-demo"
    }

}
output "publicip" {
  value = aws_instance.wp.public_ip
}
