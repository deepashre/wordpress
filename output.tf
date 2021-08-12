resource "local_file" "AnsibleInventory" {
 content = templatefile("inventory.tmpl",
 {
  public_ip = aws_instance.wordpress.public_ip
 }
 )
 filename = "inventory"
}
