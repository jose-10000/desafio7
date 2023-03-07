provider "aws" {
  region                      = "us-east-1"
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true
  
  ####### se cambio s3_force_path_style por s3_use_path_style	################
  s3_use_path_style = false
  endpoints {
    s3 = "172.17.0.3:4566"
  }
}
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
