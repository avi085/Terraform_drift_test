
# Get the latest Amazon Linux 2023 AM 
/*
data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-*-x86_64"]
  }

  filter {
    name   = "state"
    values = ["available"]
  }
} 
*/

# Create two EC2 instances
resource "aws_instance" "demo" {
  count = 2

  #ami           = data.aws_ami.amazon_linux.id 
  ami            = "ami-0332d564d76dbd8d6"
  instance_type = var.instance_type

  tags = {
    Name        = "Terraform-Demo-${count.index + 1}"
    Environment = "Demo"
    ManagedBy   = "Terraform"
  }
}
