resource "aws_s3_bucket" "terraform-vpc-meetup-s3" {
    bucket = "terraform-vpc-meetup.andresweber.com"
    acl = "private"
    tags = {
        Owner = "terraform-vpc-meetup"
        Project = "terraform-vpc-meetup"
    }
}