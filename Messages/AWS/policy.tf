data "aws_iam_policy_document" "sqs_policy" {
  statement {
    sid       = "Allow-SNS-SendMessage"
    effect    = "Allow"
    actions   = ["sqs:SendMessage"]
    resources = ["*"]
    principals {
      type        = "*"
      identifiers = ["*"]
    }
    condition {
      test     = "ArnEquals"
      variable = "aws:SourceArn"
      values   = [aws_sns_topic.topic.arn]
    }
  }
}