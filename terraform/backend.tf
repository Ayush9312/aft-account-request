terraform {
  backend "s3" {
    bucket         = "aft-tf-state-mi"
    key            = "aft/aft.tfstate"
    region         = "eu-central-1"
  }
}