provider "aws" {
  region  = "eu-west-1"
  version = "~> 1.37"
  profile = "speakforme"
}

provider "aws" {
  alias   = "mumbai"
  region  = "ap-south-1"
  version = "~> 1.37"
  profile = "speakforme"
}

terraform {
  version = "~> 0.11.8"

  backend "s3" {
    bucket  = "speakforme-infrastructure"
    key     = "terraform.tfstate"
    region  = "ap-south-1"
    profile = "speakforme"
    encrypt = "true"
  }
}

variable "region" {
  description = "AWS region"
  default     = "eu-west-1"
}
