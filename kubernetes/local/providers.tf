terraform {
    required_providers {
      local = {
        source = "hashicorp/local"
        version = "~>2.4.0"
      }
      aws = {
        source = "hashicorp/aws"
        version = "~>5.24.0"
      }
    }
}

provider "aws" {
  skip_requesting_account_id  = true
  region                      = "ru-west-itoracle"
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_region_validation      = true
  skip_get_ec2_platforms      = true
  s3_force_path_style         = true
  access_key                  = "mock_access_key"
  secret_key                  = "mock_secret_key"

  endpoints {
    #dynamodb = "http://localhost:4569"
    s3       = "http://minioapi.minio-dev:9000"
  }
}
