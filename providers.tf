provider "aws" {
  access_key                  = "mock_access_key"
  secret_key                  = "mock_access_key"
  region                      = "us-east-1"
  s3_use_path_style           = true
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true
  endpoints {
    apigateway     = "http://172.17.0.3:4566"
    apigatewayv2   = "http://172.17.0.3:4566"
    cloudformation = "http://172.17.0.3:4566"
    cloudwatch     = "http://172.17.0.3:4566"
    dynamodb       = "http://172.17.0.3:4566"
    ec2            = "http://172.17.0.3:4566"
    es             = "http://172.17.0.3:4566"
    elasticache    = "http://172.17.0.3:4566"
    firehose       = "http://172.17.0.3:4566"
    iam            = "http://172.17.0.3:4566"
    kinesis        = "http://172.17.0.3:4566"
    lambda         = "http://172.17.0.3:4566"
    rds            = "http://172.17.0.3:4566"
    redshift       = "http://172.17.0.3:4566"
    route53        = "http://172.17.0.3:4566"
    s3             = "http://172.17.0.3:4566"
    secretsmanager = "http://172.17.0.3:4566"
    ses            = "http://172.17.0.3:4566"
    sns            = "http://172.17.0.3:4566"
    sqs            = "http://172.17.0.3:4566"
    ssm            = "http://172.17.0.3:4566"
    stepfunctions  = "http://172.17.0.3:4566"
    sts            = "http://172.17.0.3:4566"
  }
}
