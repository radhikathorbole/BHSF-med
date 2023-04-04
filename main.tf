resource "aws_instance" "app_server" {
  instance_type   = "t3.medium"
  ami             = "ami-0aa7d40eeae50c9a9"
  key_name        = "TF"
  security_groups = ["${aws_security_group.lx_srvr_sg.name}"]
  user_data       = <<-EOF
  #!/bin/bash
  sudo yum install httpd -y
  sudo systemctl start httpd
  sudo echo "Welcome to Terrafrom training" > /var/www/html/index.html
  EOF

  tags = {
    "Name" = "app_server"
    "Env"  ="development"
  }

}