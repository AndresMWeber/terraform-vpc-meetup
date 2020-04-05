resource "aws_instance" "terraform-vpc-meetup-ec2" {
    ami = "ami-0a887e401f7654935"
    instance_type = "t2.micro"

    key_name = "terraform-vpc-meetup-ec2"

    tags = {
        Owner = "terraform-vpc-meetup"
        Project = "aws-cloud-automation"
    }
}