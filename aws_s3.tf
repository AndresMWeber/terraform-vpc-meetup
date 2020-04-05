resource "aws_s3_bucket" "terraform-vpc-meetup-s3" {
    bucket = "terraform-vpc-meetup.andresweber.com"
    acl = "public-read"
    tags = {
        Owner = "terraform-vpc-meetup"
        Project = "aws-cloud-automation"
    }
    
    website {
        index_document = "hello.html"
        error_document = "error.html"
    }
}