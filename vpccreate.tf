provider "aws" {
      region = "us-east-1"
      alias  = "virginia"
    }

    provider "aws" {
      region = "eu-west-1"
      alias  = "ireland"
    }

resource "aws_vpc" "us_east_vpc" {
      provider   = aws.virginia
      cidr_block = "10.0.0.0/16"
      tags = {
        Name = "US-East-1-VPC"
      }
    }

    resource "aws_vpc" "eu_west_vpc" {
      provider   = aws.ireland
      cidr_block = "10.1.0.0/16"
      tags = {
        Name = "EU-West-1-VPC"
      }
    }