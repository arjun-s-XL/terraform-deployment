# Define the provider and connection settings
provider "null" {}

resource "null_resource" "install_mysql" {
  connection {
    type        = "ssh"
    host        = "10.81.4.37"
    user        = "user"  # Replace with your username on the webserver
    private_key = file("~/.ssh/id_rsa")
  }

  # Define the commands to install MySQL
  provisioner "remote-exec" {
    inline = [
      "sudo apt-get update",
      "sudo apt-get install -y mysql-server",
      "sudo systemctl start mysql",
      "sudo systemctl enable mysql"
    ]
  }
}

