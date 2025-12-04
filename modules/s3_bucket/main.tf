// create a s3 bucket
resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
  tags   = var.tag
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.bucket.id

  versioning_configuration {
    status = var.bucket_versioning ? "Enabled" : "Suspended"
  }

}
