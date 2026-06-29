# Fetch latest Amazon Linux 2023 AMI
data "aws_ami" "al2023" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-*-x86_64"]
  }
}

resource "aws_security_group" "instances" {
  name        = "${var.name}-sg"
  description = "Allow SSH"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.ssh_cidr]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = { Name = "${var.name}-sg" }
}

resource "aws_instance" "test" {
  count                  = var.instance_count
  ami                    = data.aws_ami.al2023.id
  instance_type          = "t3.micro"
  subnet_id              = var.subnet_ids[count.index % length(var.subnet_ids)]
  vpc_security_group_ids = [aws_security_group.instances.id]
  key_name               = var.key_name

  tags = { Name = "${var.name}-${count.index + 1}" }
}
