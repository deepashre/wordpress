provider "aws" {
  region = var.aws_region
}
resource "aws_instance" "wordpress" { 
    ami = "ami-0aac36fc62a289593"
    instance_type = "t2.micro"
    key_name = "cloud-poc"
    
    tags = {
    Name = "wordpress-demo"
    }

}
output "publicip" {
  value = aws_instance.wordpress.public_ip
}
