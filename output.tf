resource "local_file" "AnsibleInventory" {
 content = templatefile("inventory.tmpl",
 {
  public_ip = aws_instance.wp.public_ip
 }
 )
 filename = "inventory"
}
