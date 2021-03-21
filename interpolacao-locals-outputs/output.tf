output "bucket_name" {
  value = aws_s3_bucket.website.bucket
}

output "bucket_arn" {
  value = aws_s3_bucket.website.arn
}

output "bucket_domain_name" {
  value = aws_s3_bucket.website.bucket_domain_name
}

output "ips_file_path" {
  value = "${aws_s3_bucket.website.bucket}/${aws_s3_bucket_object.archive_bucket.key}"
}
