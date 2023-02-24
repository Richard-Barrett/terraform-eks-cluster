#######################################
#     IAM ROLE FOR TERRAFORM USER     #
#######################################
resource "aws_iam_role" "terraform" {
  name                = "terraform"
  assume_role_policy  = data.aws_iam_policy_document.instance_assume_role_policy.json # (not shown)
  managed_policy_arns = []
}

