terraform {
    required_providers {
      #local {
      #  version = "~>2.4.0"
      #}
      aws {
        version = "~>5.24.0"
      }
    }
}

provider "aws" {
  region                      = "${var.region}"
  skip_credentials_validation = true
  skip_requesting_account_id  = true
  skip_metadata_api_check     = true
  s3_force_path_style         = true
  access_key                  = "mock_access_key"
  secret_key                  = "mock_secret_key"

  endpoints {
    #dynamodb = "http://localhost:4569"
    s3       = "http://minioapi.minio-dev:9000"
  }
}
