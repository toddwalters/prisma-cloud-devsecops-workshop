provider "aws" {
  region = "us-east-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    git_commit           = "cababeb044d3d4b6878f0af77a7c05526aca9dba"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-06-12 20:15:43"
    git_last_modified_by = "walters_todd_a@lilly.com"
    git_modifiers        = "walters_todd_a"
    git_org              = "toddwalters"
    git_repo             = "prisma-cloud-devsecops-workshop"
    yor_name             = "dev_s3"
    yor_trace            = "80a6c88f-4124-4b3e-8b4a-993a07465b57"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

