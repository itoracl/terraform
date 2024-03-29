#
# terraform init -backend-config=./config/backend.s3.tf
#
terraform {
  backend "s3" {
    endpoint = "http://minioapi.minio-dev:9000"
    bucket     = "terraform"
    region     = "ru-west-itoracle"
    key        = "kubernetes/local/terraform.tfstate"
    access_key = "HOIO0bhei0ttkLWI"
    secret_key = "i9XZ3DxvEL1MzM4W6p6Ze6YtmzTEqMsp"

    use_path_style = true
    encrypt    = false

    skip_requesting_account_id  = true
    skip_region_validation      = true
    skip_credentials_validation = true
    skip_metadata_api_check = true
  }
}