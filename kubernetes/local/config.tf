terraform {
  backend "s3" {
    endpoint.s3 = "http://minioapi.minio-dev:9000"
    bucket     = "terraform"
    region     = "default"
    key        = "kubernetes/local/terraform.tfstate"
    access_key = "HOIO0bhei0ttkLWI"
    secret_key = "i9XZ3DxvEL1MzM4W6p6Ze6YtmzTEqMsp"

    use_path_style = true
    encrypt    = false

    skip_region_validation      = true
    skip_credentials_validation = true
    skip_metadata_api_check = true
  }
}