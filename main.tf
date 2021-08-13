provider "aws" {
  region = var.aws_region
}
resource "aws_instance" "wordpress" { 
    ami = "ami-0adef6268736a8a10"
    instance_type = "t2.micro"
    key_name = "cloud-poc"
    
    tags = {
    Name = "wordpress-demo"
    }

}
output "publicip" {
  value = aws_instance.wordpress.public_ip
}
