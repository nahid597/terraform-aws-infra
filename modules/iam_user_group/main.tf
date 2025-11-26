# create iam user group
resource "aws_iam_group" "group" {
  name = var.group_name
}

# attach policy to the group
resource "aws_iam_group_policy_attachment" "group_policy" {
  group      = aws_iam_group.group.name
  policy_arn = var.policy_arn
}

# create IAM user
resource "aws_iam_user" "user" {
  name          = var.user_name
  force_destroy = true
}

# add user to the group
resource "aws_iam_user_group_membership" "user_group_membership" {
  user = aws_iam_user.user.name
  groups = [
    aws_iam_group.group.name
  ]
}
