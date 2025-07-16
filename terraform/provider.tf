provider "aws" {
  alias  = "aft_management"
  region = "eu-central-1"
  assume_role {
    role_arn = "arn:aws:iam::071844616048:role/AWSAFTExecution"
  }
}

provider "aws" {
  alias  = "ct_management"
  region = "eu-central-1"
  assume_role {
    role_arn = "arn:aws:iam::071844616048:role/AWSAFTExecution"
  }
}

provider "aws" {
  alias  = "log_archive"
  region = "eu-central-1"
  assume_role {
    role_arn = "arn:aws:iam::776327184492:role/AWSAFTExecution"
  }
}

provider "aws" {
  alias  = "audit"
  region = "eu-central-1"
  assume_role {
    role_arn = "arn:aws:iam::886011807348:role/AWSAFTExecution"
  }
}
