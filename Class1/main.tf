resource "aws_iam_user" "lb1" {
  name = "gabi"
}

resource "aws_iam_user" "lb2" {
  name = "gabi3"
}

resource "aws_iam_group" "developers" {
  name = "developers"
}

resource "aws_iam_group_membership" "team" {
  name = "tf-testing-group-membership"


  users = [
    aws_iam_user.lb1.name,             #== gabi
    aws_iam_user.lb2.name,             #== gabi3
  ]

  group = aws_iam_group.developers.name          #== developers
}