resource "aws_s3_bucket_object" "terraform-vpc-meetup-bucket-object" {
    bucket = aws_s3_bucket.terraform-vpc-meetup-s3.bucket
    key = "hello.html"
    source = "hello.html"

    acl = "public-read"

    tags = {
        Owner = "terraform-vpc-meetup"
        Project = "aws-cloud-automation"
    }
}