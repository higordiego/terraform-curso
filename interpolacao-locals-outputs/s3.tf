resource "aws_s3_bucket" "website" {
  bucket = "${random_pet.bucket.id}-${var.environment}"
  acl    = "private"
  tags   = local.common_tags
}

resource "aws_s3_bucket_object" "archive_bucket" {
  bucket       = aws_s3_bucket.website.bucket
  key          = "config/ips.json"
  source       = "${local.ip_filepath}/ips.json"
  etag         = filemd5("${local.ip_filepath}/ips.json")
  content_type = local.content_type
  tags         = local.common_tags
}


resource "aws_s3_bucket" "manual" {
  bucket = "doc.covid.finspect.me"
  tags = {
    Importado = "import_feito_terraform"
  }
}
