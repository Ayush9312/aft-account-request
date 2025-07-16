# AFT Management account
provider "aws" {
  alias  = "aft_management"
  region = "eu-central-1"
  assume_role {
    role_arn = "arn:aws:iam::071844616048:role/AWSAFTExecution"
  }
  default_tags {
    tags = {
      managed_by = "AFT"
    }
  }
}

# Control Tower Management Account
provider "aws" {
  alias  = "ct_management"
  region = "eu-central-1"
  assume_role {
    role_arn = "arn:aws:iam::071844616048:role/AWSAFTExecution"
  }
}

# Log Archive Account
provider "aws" {
  alias  = "log_archive"
  region = "eu-central-1"
  assume_role {
    role_arn = "arn:aws:iam::776327184492:role/AWSAFTExecution"
  }
}

# Audit Account
provider "aws" {
  alias  = "audit"
  region = "eu-central-1"
  assume_role {
    role_arn = "arn:aws:iam::886011807348:role/AWSAFTExecution"
  }
}

# Default provider — not aliased
provider "aws" {
  region = "eu-central-1"
  assume_role {
    role_arn = "arn:aws:iam::071844616048:role/AWSAFTExecution"
  }
}
