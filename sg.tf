resource "aws_security_group" "TestVM-sg" {
name= "TestVM-sg"
description = "Security group for testing"
egress {
from_port = 0
to_port = 0
protocol = "-1"
cidr_blocks = ["0.0.0.0/0"]
}

ingress {
from_port = 22
to_port = 22
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}

ingress {
from_port = 80
to_port = 80
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}
ingress {
from_port = 0
to_port = 0
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}

ingress {
from_port = 6443
to_port = 6443
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}
}

