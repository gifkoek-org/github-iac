# terragrunt.hcl
# set the environment variables to indicate the target AWS account and region
# pass these as env.vars to the terragrunt container, like so:
# docker run -ti --rm
#    -v $HOME/.aws:/root/.aws
#    -v ${HOME}/.ssh:/root/.ssh
#    -v `pwd`:/apps
#    -e TARGET_ACCOUNT='foobar'
#    -e REGION='eu-west-1'
#    alpine/terragrunt:0.12.5 terragrunt apply
#
#NOTES:
# - setting the S3 bucket key with TARGET_ACCOUNT and REGION ensures that state is separate for each target and
#   region combo
# - not tested - terragrunt will auto-create the bucket and DDB table if it doesn't exist, assuming it has permissions
#   to do so

remote_state {
  backend = "s3"
  config = {
    bucket = "gifkoek-terraform-state"
    key = join("/", ["github", "terraform.tfstate"])
#    key = "${path_relative_to_include()}/terraform.tfstate"
    region = "eu-west-1"
#    dynamodb_table = "terraformstatelocking"
    encrypt = true #explicitly set it, although S3 default encryption should be set already
  }
}