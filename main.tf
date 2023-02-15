resource "aws_s3_bucket" "websitelaerte" {
  bucket = "websitelaerte"
}

resource "aws_s3_bucket_public_access_block" "websitelaerte" {
  bucket = aws_s3_bucket.websitelaerte.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_website_configuration" "websitelaerte" {
  bucket = aws_s3_bucket.websitelaerte.bucket

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }
}

resource "aws_s3_object" "page_index" {
  bucket       = aws_s3_bucket.websitelaerte.bucket
  key          = "index.html"
  content_type = "text/html; character=UTF-8"
  source       = "website/index.html"
  etag         = filemd5("website/index.html")
}


resource "aws_s3_bucket_policy" "allow_access_from_another_account" {
  bucket = aws_s3_bucket.websitelaerte.id
  policy = data.aws_iam_policy_document.allow_access_from_another_account.json
}
data "aws_iam_policy_document" "allow_access_from_another_account" {
  statement {
    principals {
      type        = "*"
      identifiers = ["*"]
    }

    actions = [
      "s3:GetObject"
    ]

    resources = [
      #aws_s3_bucket.websitelaerte.arn,
      "${aws_s3_bucket.websitelaerte.arn}/*"
    ]
  }
}

resource "aws_kms_key" "keyweb" {
  description             = "Encryption Bucket - websitelaerte"
  deletion_window_in_days = 7
}











