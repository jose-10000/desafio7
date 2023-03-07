variable "s3_bucket_name" {
  type    = list(string)
  default = ["raw", "transformed", "staging", "enriched", "sandbox"]
}

resource "aws_s3_bucket" "bucket" {
  count         = "${length(var.s3_bucket_name)}"
  bucket        = "${element(var.s3_bucket_name, count.index)}"
  acl           = "private"
  force_destroy = "true"
    lifecycle_rule {
    enabled = true

    transition {
      days = 180
      storage_class = "STANDARD_IA"
    }

    transition {
      days = 360
      storage_class = "GLACIER"
    }
  }
}
