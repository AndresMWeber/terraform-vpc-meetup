resource "aws_security_group" "terraform-vpc-meetup" {
    name = "aws-cloud-automation-sg"
    description = "allow ssh traffic"

    vpc_id = "vpc-847b7efe"

    ingress {
        from_port = 22
        protocol = "tcp"
        to_port = 22
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 0
        protocol = "-1"
        to_port = 0
        cidr_blocks = ["0.0.0.0/0"]
    }
}

resource "aws_instance" "terraform-vpc-meetup-ec2" {
    ami = "ami-0a887e401f7654935"
    instance_type = "t2.micro"

    key_name = "terraform-vpc-meetup-ec2"
    vpc_security_group_ids = [aws_security_group.terraform-vpc-meetup.id]
    tags = {
        Owner = "terraform-vpc-meetup"
        Project = "aws-cloud-automation"
    }
}